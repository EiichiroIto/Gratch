test
testSetN2

	| w t b |
	w := self newWorld.
	w createNodes: 3.
	w createEdgeFrom: 2 to: 3.
	self
		assert:
		(w var: GrEdgesVarDef n1VarNo breed: GrBreedId edgesBreedNo at: 1)
		equals: 2.
	self
		assert:
		(w var: GrEdgesVarDef n2VarNo breed: GrBreedId edgesBreedNo at: 1)
		equals: 3.
	b := self newGenerator.
	b setN2: (self literalValue: 1).
	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 1.
	t codes: b code.
	t execute: 1.
	self
		assert:
		(w var: GrEdgesVarDef n1VarNo breed: GrBreedId edgesBreedNo at: 1)
		equals: 2.
	self
		assert:
		(w var: GrEdgesVarDef n2VarNo breed: GrBreedId edgesBreedNo at: 1)
		equals: 1