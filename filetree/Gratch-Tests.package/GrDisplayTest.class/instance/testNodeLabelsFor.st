test
testNodeLabelsFor
	| w d |
	w := self newWorld.
	d := self newDisplay: w.
	w createNodes: 3.
	w pointAt: 1 put: 2 @ 3.
	d
		nodeLabels:
			{GrNodesVarDef xVarNo.
			GrNodesVarDef yVarNo}.
	self assertCollection: (d nodeLabelsFor: 1) equals: {'2.0' . '3.0'}