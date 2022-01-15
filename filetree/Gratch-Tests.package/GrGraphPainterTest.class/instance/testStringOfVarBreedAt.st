test
testStringOfVarBreedAt
	| p w ret |
	w := self newWorld.
	w createNodes: 3.
	w pointAt: 1 put: 100 @ 100.25.
	p := self newPainter: w.
	ret := p stringOfVar: GrNodesVarDef xVarNo breed: GrBreedId nodesBreedNo at: 1.
	self assert: ret equals: '100.0'.
	ret := p stringOfVar: GrNodesVarDef yVarNo breed: GrBreedId nodesBreedNo at: 1.
	self assert: ret equals: '100.3'.