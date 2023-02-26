test
testSetColor

	| w t b r |
	w := self newWorld.
	w createNodes: 2.
	w createEdgeFrom: 1 to: 2.
	b := self newGenerator.
	b setColor: (self literalValue: ColorList brown).
	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 1.
	t codes: b code.
	r := t execute: 1.
	self
		assert:
		(w var: GrEdgesVarDef colorVarNo breed: GrBreedId edgesBreedNo at: 1)
		equals: ColorList brown.

	b := self newGenerator.
	b setColor: (self literalValue: ColorList yellow).
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	r := t execute: 1.
	self
		assert:
		(w var: GrNodesVarDef colorVarNo breed: GrBreedId nodesBreedNo at: 1)
		equals: ColorList yellow