drawing
drawOn: aCanvas

	"Draw the background then the selection."

	super drawOn: aCanvas.
	isKeyboardFocus ifTrue: [ self drawSelectionOn: aCanvas ]