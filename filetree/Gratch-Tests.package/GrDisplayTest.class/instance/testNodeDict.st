test
testNodeDict
	| d w ret |
	w := self newWorld.
	w createNodes: 3.
	w pointAt: 1 put: 100 @ 100.
	w pointAt: 2 put: 50 @ 50.
	w pointAt: 3 put: -100 @ -100.
	w var: GrNodesVarDef colorVarNo breed: GrBreedId nodesBreedNo at: 1 put: ColorList red.
	w var: GrNodesVarDef colorVarNo breed: GrBreedId nodesBreedNo at: 2 put: ColorList green.
	w var: GrNodesVarDef colorVarNo breed: GrBreedId nodesBreedNo at: 3 put: ColorList blue.
	d := self newDisplay: w.
	d graphRectangle: (-110 @ -110 corner: 110 @ 110).
	ret := d nodeDict.
	self assert: ret size equals: 3

