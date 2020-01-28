test
testEdgeLabelsFor
	| w d |
	w := self newWorld.
	d := self newDisplay: w.
	w createNodes: 3.
	w n1At: 1 put: 1.
	w n2At: 1 put: 2.
	d
		edgeLabels:
			{GrEdgesVarDef n1VarNo.
			GrEdgesVarDef n2VarNo}.
	self assertCollection: (d edgeLabelsFor: 1) equals: {'1' . '2'}