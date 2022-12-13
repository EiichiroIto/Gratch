text editing
moveCursorRight

	"Move the cursor (selectionStart) right by one character."

	selectionStart := selectionEnd + 1 min: stringMorph contents size.
	selectionEnd := selectionStart.
	self changed