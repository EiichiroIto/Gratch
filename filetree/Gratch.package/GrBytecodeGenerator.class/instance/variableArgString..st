arg generator
variableArgString: aString

	| v |
	v := [ script varNoFor: aString ]
		     on: Error
		     do: [ nil ].
	v ifNil: [ ^ 0 ].
	^ self unaryCommand: #getVar arg: v