basic ops
setAllNodesTo: aList
	| v |
	v := aList choice.
	v isEmpty
		ifTrue: [ self error ].
	bcGenerator
		setElements: GrCommandId allNodesCommandNo
		arg: 0
		toList: (targetMorph varId varNoFor: v)