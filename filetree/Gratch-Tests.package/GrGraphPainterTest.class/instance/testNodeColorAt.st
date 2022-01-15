test
testNodeColorAt
	| p w |
	w := self newWorld.
	w createNodes: 3.
	w pointAt: 1 put: 100 @ 100.
	w pointAt: 2 put: 50 @ 50.
	w pointAt: 3 put: -100 @ -100.
	w
		var: GrNodesVarDef colorVarNo
		breed: GrBreedId nodesBreedNo
		at: 1
		put: ColorList red.
	w
		var: GrNodesVarDef colorVarNo
		breed: GrBreedId nodesBreedNo
		at: 2
		put: ColorList white.
	w
		var: GrNodesVarDef colorVarNo
		breed: GrBreedId nodesBreedNo
		at: 3
		put: ColorList black.
	p := self newPainter: w.
	self assert: (p nodeColorAt: 1) equals: Color red.
	self assert: (p nodeColorAt: 2) equals: Color white.
	self assert: (p nodeColorAt: 3) equals: Color white.
	p bgColor: Color white.
	self assert: (p nodeColorAt: 1) equals: Color red.
	self assert: (p nodeColorAt: 2) equals: Color black.
	self assert: (p nodeColorAt: 3) equals: Color black