list ops
adjacentNodesTo: node into: aList

	| v |
	v := aList choice.
	v isEmpty ifTrue: [ self error ].
	self
		setElements: GrCommandId adjacentNodesCommandNo
		arg: [ node argString: parser ]
		toList: (script varNoFor: v)