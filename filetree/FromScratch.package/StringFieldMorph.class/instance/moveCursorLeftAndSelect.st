text editing
moveCursorLeftAndSelect

	"Move the cursor (selectionStart), and select, left by one character."

	selectionStart := selectionStart - 1 max: 0.
	self changed