test
testVarAtPut
	| g v |
	g := self newGraph.
	v := g addVariable: 'a'.
	g var: v at: 1 put: 3.
	self assert: (g var: v at: 1) equals: 3