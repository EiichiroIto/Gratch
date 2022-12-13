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

	ch = Character escape ifTrue: [ self clear ].
	ch = Character backspace ifTrue: [ self backspace ].
	ch = Character delete ifTrue: [ self deleteSelection ].

	ch = Character arrowLeft ifTrue: [ 
		evt shiftPressed
			ifTrue: [ self moveCursorLeftAndSelect ]
			ifFalse: [ self moveCursorLeft ] ].
	ch = Character arrowRight ifTrue: [ 
		evt shiftPressed
			ifTrue: [ self moveCursorRightAndSelect ]
			ifFalse: [ self moveCursorRight ] ].
	(ch = Character home or: [ ch = Character arrowUp ]) ifTrue: [ 
		evt shiftPressed
			ifTrue: [ self moveCursorHomeAndSelect ]
			ifFalse: [ self moveCursorHome ] ].
	(ch = Character end or: [ ch = Character arrowDown ]) ifTrue: [ 
		evt shiftPressed
			ifTrue: [ self moveCursorEndAndSelect ]
			ifFalse: [ self moveCursorEnd ] ].
	evt controlKeyPressed ifTrue: [ 
		ch = $a ifTrue: [ self selectAll ].
		ch = $c ifTrue: [ self copySelection ].
		ch = $v ifTrue: [ self paste ].
		ch = $x ifTrue: [ self cutSelection ] ].
	self stringChanged