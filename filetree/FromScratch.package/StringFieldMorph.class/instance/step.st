stepping
step

	isKeyboardFocus ifFalse: [^ self].
	blinkState := blinkState not.
	selectionStart = selectionEnd ifTrue: [self changed].
