list ops
setAllNodesTo: aList

	| v |
	v := aList choice.
	v isEmpty ifTrue: [ self error ].
	self
		setElements: GrCommandId allNodesCommandNo
		arg: 0
		toList: (script varNoFor: v)