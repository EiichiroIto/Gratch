event handling
keyboardFocusChange: amGettingFocus

	"Set my color to show whether I have focus."

	(amGettingFocus and: [ isKeyboardFocus not ]) ifTrue: [ 
		lastContents := stringMorph contents ].

	(isKeyboardFocus and: [ amGettingFocus not ]) ifTrue: [ 
		lastContents := nil.
		isNumeric ifTrue: [ 
			self contents: stringMorph contents asNumberNoError printString ] ].

	isKeyboardFocus := amGettingFocus.
	isKeyboardFocus ifTrue: [ 
		selectionStart := 0.
		selectionEnd := stringMorph contents size.
		blinkState := true ].
	self stringChanged