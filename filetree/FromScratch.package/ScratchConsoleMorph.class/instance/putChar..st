private
putChar: aCharacter

	self characterAt: cursor put: aCharacter.
	cursor := cursor + (1 @ 0).
	(self withinScreen: cursor) ifTrue: [ ^ self ].
	cursor x >= screenSize x ifTrue: [ cursor := 0 @ (cursor y + 1) ].
	cursor y < screenSize y ifTrue: [ ^ self ].
	self scroll: 1.
	cursor := 0 @ (screenSize y - 1)