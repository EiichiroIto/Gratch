drawing
drawCursorOn: aCanvas

	| pos c |
	c := self characterAt: cursor.
	pos := self topLeft + (cursor * charExtent).
	aCanvas fillRectangle: (pos extent: charExtent) color: self textColor.
	aCanvas
		drawString: c asString
		at: pos
		font: font
		color: self color