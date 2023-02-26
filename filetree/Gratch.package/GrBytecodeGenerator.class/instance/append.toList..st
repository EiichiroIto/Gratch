list ops
append: anObject toList: aList

	| v |
	v := aList choice.
	v isEmpty ifTrue: [ self error ].
	self
		binaryCommand: #appendToList
		arg1: (script varNoFor: v)
		arg2: [ anObject argString: parser ]