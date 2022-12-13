event handling
startDrag: evt

	draggingPoint := evt cursorPoint.
	scrollPoint := owner hScrollPixels @ owner vScrollPixels.
	evt hand showTemporaryCursor: Cursor move