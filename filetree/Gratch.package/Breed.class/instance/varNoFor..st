accessing
varNoFor: aString
	^ aString = 'id'
		ifTrue: [ 0 ]
		ifFalse: [ varId varNoFor: aString ]