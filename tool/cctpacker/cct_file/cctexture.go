package cct_file

import (
	"bytes"
	"compress/zlib"
	"fmt"
	"image"
	"image/color"
	"io"
	"math"

	"file_types"

	"github.com/disintegration/imaging"
	"golang.org/x/image/colornames"
)

type CCTexture struct {
	Magic  string
	U1     int32
	Width  int32
	Height int32
	U2     int32
	U3     int32
	U4     int32
}

func map16to256(value byte) byte {
	f := float64(value) / 15
	f *= 255.0
	return byte(math.Round(f))
}

func map256to16(value byte) byte {
	f := float64(value) / 255
	f *= 15.0
	return byte(math.Round(f))
}

func ReadCCTexture(file io.Reader) (CCTexture, *image.NRGBA) {
	var data CCTexture

	data.Magic = string(file_types.ReadNextBytes(file, 4))
	data.U1 = file_types.ReadInt32LittleEndian(file)
	data.Width = file_types.ReadInt32LittleEndian(file)
	data.Height = file_types.ReadInt32LittleEndian(file)

	data.U2 = file_types.ReadInt32LittleEndian(file)
	data.U3 = file_types.ReadInt32LittleEndian(file)
	data.U4 = file_types.ReadInt32LittleEndian(file)

	r, _ := zlib.NewReader(file)
	var out bytes.Buffer

	io.Copy(&out, r)
	bytes := out.Bytes()

	fmt.Printf("Decompressed: %d bytes!\n", len(bytes))

	//red bytes 	0b11110000 00000000
	//green bytes 	0b00001111 00000000
	//blue bytes 	0b00000000 11110000
	//alpha bytes	0b00000000 00001111

	i := imaging.New(int(data.Width), int(data.Height), colornames.Red)

	for x := int32(0); x < data.Width; x++ {
		for y := int32(0); y < data.Height; y++ {
			index := 2 * (x + (y * data.Width))

			ba := bytes[index+0]
			rg := bytes[index+1]

			mask := byte(0b00001111)

			red := (rg >> 4) & mask
			green := rg & mask
			blue := (ba >> 4) & mask
			alpha := ba & mask

			red = map16to256(red)
			green = map16to256(green)
			blue = map16to256(blue)
			alpha = map16to256(alpha)

			i.SetNRGBA(int(x), int(y), color.NRGBA{R: red, G: green, B: blue, A: alpha})
		}
	}

	return data, i
}

func WriteCCTexture(file io.Writer, texture CCTexture, img *image.NRGBA) {

	buffer := make([]byte, texture.Width*texture.Height*2)

	for x := int32(0); x < texture.Width; x++ {
		for y := int32(0); y < texture.Height; y++ {
			index := 2 * (x + (y * texture.Width))
			color := img.NRGBAAt(int(x), int(y))

			r := map256to16(color.R)
			g := map256to16(color.G)
			b := map256to16(color.B)
			a := map256to16(color.A)

			rg := (r << 4) | g
			ba := (b << 4) | a

			buffer[index] = byte(ba)
			buffer[index+1] = rg
		}
	}

	var b bytes.Buffer
	w, _ := zlib.NewWriterLevel(&b, zlib.BestCompression)
	w.Write(buffer)
	w.Close()

	file.Write([]byte(texture.Magic))
	file_types.WriteInt32LittleEndian(file, texture.U1)
	file_types.WriteInt32LittleEndian(file, texture.Width)
	file_types.WriteInt32LittleEndian(file, texture.Height)

	file_types.WriteInt32LittleEndian(file, texture.U2)
	file_types.WriteInt32LittleEndian(file, texture.U3)
	file_types.WriteInt32LittleEndian(file, int32(len(b.Bytes())))

	file.Write(b.Bytes())
}
