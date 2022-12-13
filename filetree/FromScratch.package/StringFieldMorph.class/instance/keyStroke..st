event handling
keyStroke: evt

	| ch |
	ch := evt keyCharacter asUnicode.
	ch >= 32 ifTrue: [ self insertCharacter: ch ]