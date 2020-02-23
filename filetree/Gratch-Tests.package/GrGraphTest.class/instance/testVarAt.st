test
testVarAt
	| g w r v |
	g := self newGraph.
	w := g grWorld.
	w addBreed: g.
	r := g var: GrGraphVarDef maxBreedNoVarNo at: 1.
	self assert: r equals: 1.
	v := g addVariable: 'a'.
	g var: v at: 1 put: 3.
	self assert: (g var: v at: 1) equals: 3