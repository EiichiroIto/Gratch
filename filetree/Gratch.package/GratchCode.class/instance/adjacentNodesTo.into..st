basic ops
adjacentNodesTo: node into: aList
	| v |
	v := aList choice.
	v isEmpty
		ifTrue: [ self error ].
	bcGenerator
		setElements: GrCommandId adjacentNodesCommandNo
		arg: [ node argString: parser ]
		toList: (targetMorph varId varNoFor: v)