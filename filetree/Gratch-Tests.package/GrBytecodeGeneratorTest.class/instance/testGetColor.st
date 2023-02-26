test
testGetColor

	| w t b r |
	w := self newWorld.
	w createNodes: 2.
	w createEdgeFrom: 1 to: 2.
	w
		var: GrEdgesVarDef colorVarNo
		breed: GrBreedId edgesBreedNo
		at: 1
		put: ColorList brown.
	w
		var: GrNodesVarDef colorVarNo
		breed: GrBreedId nodesBreedNo
		at: 1
		put: ColorList yellow.
	b := self newGenerator.
	r := b getColor.
	self assert: r isNil.
	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 1.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r equals: ColorList brown.
	b := self newGenerator.
	r := b getColor.
	self assert: r isNil.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r equals: ColorList yellow