test
testVarArrayNamed
	| g |
	g := self newGraph.
	self assert: (g varArrayNamed: 'abc') isNil.