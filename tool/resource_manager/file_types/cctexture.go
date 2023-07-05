package file_types

import (
	"bytes"
	"compress/zlib"
	"image/color"
	"io"
	"os"

	"github.com/disintegration/imaging"
)

type ccTexture struct {
	Magic  uint32
	U1     uint32
	Width  uint32
	Height uint32
	U2     uint32
	U3     uint32
	U4     uint32
}

func readCCTexture(file *os.File) (ccTexture, bytes.Buffer) {
	var data ccTexture

	data.Magic = readUint32LittleEndian(file)
	data.U1 = readUint32LittleEndian(file)
	data.Width = readUint32LittleEndian(file)
	data.Height = readUint32LittleEndian(file)

	data.U2 = readUint32LittleEndian(file)
	data.U3 = readUint32LittleEndian(file)
	data.U4 = readUint32LittleEndian(file)

	r, _ := zlib.NewReader(file)
	var out bytes.Buffer

	io.Copy(&out, r)

	image := imaging.New(int(data.Width), int(data.Height), color.Transparent)

	for x := 0; x < int(data.Width); x++ {
		for y := 0; y < int(data.Width); y++ {
			green, _ := out.ReadByte()
			red, _ := out.ReadByte()
			blue, _ := out.ReadByte()
			alpha, _ := out.ReadByte()

			//green++
			//blue++
			alpha++
			image.SetNRGBA(y, x, color.NRGBA{R: uint8(red), G: uint8(green), B: uint8(blue), A: uint8(255)})
		}
	}

	imaging.Save(image, "C:\\Users\\dylan\\Desktop\\out.png")

	return data, out
}
