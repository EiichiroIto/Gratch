test
testNodeLabelsAt
	| w p |
	w := self newWorld.
	p := self newPainter: w.
	w createNodes: 3.
	w pointAt: 1 put: 2 @ 3.
	p
		nodeLabels:
			{GrNodesVarDef xVarNo.
			GrNodesVarDef yVarNo}.
	self assertCollection: (p nodeLabelsAt: 1) equals: {'2.0' . '3.0'}