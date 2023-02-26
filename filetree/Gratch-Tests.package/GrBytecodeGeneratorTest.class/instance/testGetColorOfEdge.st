test
testGetColorOfEdge

	| w t b r |
	w := self newWorld.
	w createNodes: 3.
	w createEdgeFrom: 1 to: 2.
	w createEdgeFrom: 2 to: 3.
	w
		var: GrEdgesVarDef colorVarNo
		breed: GrBreedId edgesBreedNo
		at: 1
		put: ColorList brown.
	w
		var: GrEdgesVarDef colorVarNo
		breed: GrBreedId edgesBreedNo
		at: 2
		put: ColorList yellow.
	b := self newGenerator.
	r := b getColorOfEdge: (self literalValue: 1).
	self assert: r isNil.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r equals: ColorList brown.
	b := self newGenerator.
	r := b getColorOfEdge: (self literalValue: 2).
	self assert: r isNil.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r equals: ColorList yellow