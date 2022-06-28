test
testEdgeColorAt
	| p w |
	w := self newWorld.
	w createNodes: 3.
	w pointAt: 1 put: 100 @ 100.
	w pointAt: 2 put: 50 @ 50.
	w pointAt: 3 put: -100 @ -100.
	w createEdgeFrom: 1 to: 2.
	w createEdgeFrom: 2 to: 3.
	w createEdgeFrom: 3 to: 1.
	w
		var: GrEdgesVarDef colorVarNo
		breed: GrBreedId edgesBreedNo
		at: 1
		put: ColorList red.
	w
		var: GrEdgesVarDef colorVarNo
		breed: GrBreedId edgesBreedNo
		at: 2
		put: ColorList white.
	w
		var: GrEdgesVarDef colorVarNo
		breed: GrBreedId edgesBreedNo
		at: 3
		put: ColorList black.
	p := self newPainter: w.
	p bgColor: Color black.
	self assert: (p edgeColorAt: 1) equals: Color red.
	self assert: (p edgeColorAt: 2) equals: Color white.
	self assert: (p edgeColorAt: 3) equals: Color white.
	p bgColor: Color white.
	self assert: (p edgeColorAt: 1) equals: Color red.
	self assert: (p edgeColorAt: 2) equals: Color black.
	self assert: (p edgeColorAt: 3) equals: Color black