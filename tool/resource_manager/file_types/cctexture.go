package file_types

import (
	"bytes"
	"compress/zlib"
	"image"
	"image/color"
	"io"
	"math"
	"os"

	"github.com/disintegration/imaging"
	"golang.org/x/image/colornames"
)

type ccTexture struct {
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

func readCCTexture(file *os.File) (ccTexture, *image.NRGBA) {
	var data ccTexture

	data.Magic = string(readNextBytes(file, 4))
	data.U1 = readInt32LittleEndian(file)
	data.Width = readInt32LittleEndian(file)
	data.Height = readInt32LittleEndian(file)

	data.U2 = readInt32LittleEndian(file)
	data.U3 = readInt32LittleEndian(file)
	data.U4 = readInt32LittleEndian(file)

	r, _ := zlib.NewReader(file)
	var out bytes.Buffer

	io.Copy(&out, r)
	bytes := out.Bytes()

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
