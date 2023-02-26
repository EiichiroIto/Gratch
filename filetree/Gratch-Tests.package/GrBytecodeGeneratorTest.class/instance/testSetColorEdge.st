test
testSetColorEdge

	| w t b r |
	w := self newWorld.
	w createNodes: 3.
	w createEdgeFrom: 1 to: 2.
	w createEdgeFrom: 2 to: 3.
	b := self newGenerator.
	b
		setColor: (self literalValue: ColorList brown)
		edge: (self literalValue: 1).
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	r := t execute: 1.
	self
		assert:
		(w var: GrEdgesVarDef colorVarNo breed: GrBreedId edgesBreedNo at: 1)
		equals: ColorList brown.

	b := self newGenerator.
	b
		setColor: (self literalValue: ColorList yellow)
		edge: (self literalValue: 2).
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	r := t execute: 1.
	self
		assert:
		(w var: GrEdgesVarDef colorVarNo breed: GrBreedId edgesBreedNo at: 2)
		equals: ColorList yellow