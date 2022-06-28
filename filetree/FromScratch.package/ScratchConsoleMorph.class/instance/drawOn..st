drawing
drawOn: aCanvas
	super drawOn: aCanvas.
	self drawScreenOn: aCanvas.
	self drawCursorOn: aCanvas