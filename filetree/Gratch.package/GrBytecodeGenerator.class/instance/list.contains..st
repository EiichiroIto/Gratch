list ops
list: aList contains: anInteger

	| v |
	v := aList choice.
	v isEmpty ifTrue: [ self error ].
	self
		binaryCommand: #listContains
		arg1: (script varNoFor: v)
		arg2: [ anInteger argString: parser ]