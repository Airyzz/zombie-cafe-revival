package utils

// Kindly borrowed from https://www.david-colson.com/2020/03/10/exploring-rect-packing.html

import (
	"sort"
)

type Rect struct {
	X, Y          int
	W, H          int
	OriginalIndex int
	WasPacked     bool
}

type ByHeight []Rect

func (r ByHeight) Len() int           { return len(r) }
func (r ByHeight) Swap(i, j int)      { r[i], r[j] = r[j], r[i] }
func (r ByHeight) Less(i, j int) bool { return r[i].H < r[j].H }

func PackRectangles(rects []Rect, maxW int, maxH int) {
	sort.Sort(ByHeight(rects))

	xPos := 0
	yPos := 0
	largestHThisRow := 0

	for i := range rects {
		rect := &rects[i]

		if (xPos + rect.W) > maxW {
			yPos += largestHThisRow
			xPos = 0
			largestHThisRow = 0
		}

		if (yPos + rect.H) > maxH {
			break
		}

		rect.X = xPos
		rect.Y = yPos

		xPos += rect.W

		if rect.H > largestHThisRow {
			largestHThisRow = rect.H
		}

		rect.WasPacked = true
	}
}
