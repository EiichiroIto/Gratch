accessing variable
varNoFor: aString
	^ aString = 'id'
		ifTrue: [ 0 ]
		ifFalse: [ varDef varNoFor: aString ]