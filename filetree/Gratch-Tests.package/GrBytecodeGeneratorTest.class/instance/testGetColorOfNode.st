test
testGetColorOfNode

	| w t b r |
	w := self newWorld.
	w createNodes: 2.
	w
		var: GrNodesVarDef colorVarNo
		breed: GrBreedId nodesBreedNo
		at: 1
		put: ColorList brown.
	w
		var: GrNodesVarDef colorVarNo
		breed: GrBreedId nodesBreedNo
		at: 2
		put: ColorList yellow.
	b := self newGenerator.
	r := b getColorOfNode: (self literalValue: 1).
	self assert: r isNil.
	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 1.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r equals: ColorList brown.
	b := self newGenerator.
	r := b getColorOfNode: (self literalValue: 2).
	self assert: r isNil.
	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 1.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r equals: ColorList yellow