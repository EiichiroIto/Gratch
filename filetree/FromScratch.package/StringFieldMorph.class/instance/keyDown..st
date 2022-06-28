event handling
keyDown: evt

	| ch m |
	ch := evt keyCharacter.
	ch = Character tab ifTrue: [ 
		(m := self meOrOwnerThatIsA: CommandBlockMorph) ifNotNil: [ 
			m tabToNextField: evt ].
		^ self ].

	ch = Character cr | (ch = Character lf) ifTrue: [ 
		evt hand newKeyboardFocus: nil.
		^ self ].

	ch = Character escape ifTrue: [ ^ self ].

	ch = Character backspace ifTrue: [ ^ self backspace ].
	ch = Character delete ifTrue: [ ^ self deleteSelection ]