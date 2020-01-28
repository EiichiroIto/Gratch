event handling
keyStroke: evt
	(evt controlKeyPressed
		and: [ evt commandKeyPressed
				and: [ evt optionKeyPressed and: [ evt shiftPressed ] ] ])
		ifFalse: [ ^ self ].
	evt keyCharacter = Character arrowLeft
		ifTrue: [ grManipulator ifNotNil: [ :obj | obj wheelUp ] ].
	evt keyCharacter = Character arrowRight
		ifTrue: [ grManipulator ifNotNil: [ :obj | obj wheelDown ] ]