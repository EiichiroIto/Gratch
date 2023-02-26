list ops
deleteLine: anInteger ofList: aList

	| v |
	v := aList choice.
	v isEmpty ifTrue: [ self error ].
	self
		binaryCommand: #deleteLineOfList
		arg1: (script varNoFor: v)
		arg2: [ anInteger argString: parser ]