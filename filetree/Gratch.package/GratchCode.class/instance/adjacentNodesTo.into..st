basic ops
adjacentNodesTo: node into: aList
	| v |
	v := aList choice.
	v isEmpty
		ifTrue: [ self error ].
	generator
		setElements: GrCommandId adjacentNodesCommandNo
		arg: [ node argString: parser ]
		toList: (script varId varNoFor: v)