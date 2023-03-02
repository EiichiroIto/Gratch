drawing
drawBottomBarOn: aCanvas 

	self drawInnerBottomY: self bottom - self cBlockBracketThickness - 4 on: aCanvas.
	self drawBottomEdgeOn: aCanvas.

