test
testStringOfVarBreedAt
	| d w ret |
	w := self newWorld.
	w createNodes: 3.
	w pointAt: 1 put: 100 @ 100.25.
	d := self newDisplay: w.
	ret := d stringOfVar: GrNodesVarDef xVarNo breed: GrBreedId nodesBreedNo at: 1.
	self assert: ret equals: '100.0'.
	ret := d stringOfVar: GrNodesVarDef yVarNo breed: GrBreedId nodesBreedNo at: 1.
	self assert: ret equals: '100.3'.