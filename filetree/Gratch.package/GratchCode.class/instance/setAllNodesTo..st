basic ops
setAllNodesTo: aList
	| v |
	v := aList choice.
	v isEmpty
		ifTrue: [ self error ].
	generator
		setElements: GrCommandId allNodesCommandNo
		arg: 0
		toList: (script varId varNoFor: v)