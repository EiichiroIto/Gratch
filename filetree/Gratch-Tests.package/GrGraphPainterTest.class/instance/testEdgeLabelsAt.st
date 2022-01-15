test
testEdgeLabelsAt
	| w p |
	w := self newWorld.
	p := self newPainter: w.
	w createNodes: 3.
	w n1At: 1 put: 1.
	w n2At: 1 put: 2.
	self assert: (p edgeLabelsAt: 1) isNil.
	p
		edgeLabels:
			{GrEdgesVarDef n1VarNo.
			GrEdgesVarDef n2VarNo}.
	self assertCollection: (p edgeLabelsAt: 1) equals: {'1' . '2'}