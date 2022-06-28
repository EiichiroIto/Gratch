drawing
drawScreenOn: aCanvas

	| pos |
	pos := self topLeft.
	screen do: [ :each | 
		aCanvas
			drawString: each
			at: pos
			font: font
			color: self textColor.
		pos := pos x @ (pos y + charExtent y) ]