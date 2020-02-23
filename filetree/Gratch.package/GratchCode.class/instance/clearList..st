variable ops
clearList: aList
	| v |
	v := aList choice.
	v isEmpty
		ifTrue: [ self error ].
	generator
		setElements: GrCommandId clearListCommandNo
		arg: 0
		toList: (script varId varNoFor: v)