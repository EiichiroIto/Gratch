text editing
moveCursorEndAndSelect

	"Move the cursor (selectionStart), and select contents, to the end of the current line."

	selectionStart := stringMorph contents size.
	self changed