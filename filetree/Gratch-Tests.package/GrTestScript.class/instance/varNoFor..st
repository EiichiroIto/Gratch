accessing
varNoFor: aString

	aString = 'a' ifTrue: [ ^ 5 ].
	aString = 'b' ifTrue: [ ^ 3 ].
	self error