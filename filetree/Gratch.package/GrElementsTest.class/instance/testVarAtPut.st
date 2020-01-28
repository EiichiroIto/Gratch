test
testVarAtPut
	| ts |
	ts := self newNodes.
	ts var: GrNodesVarDef colorVarNo at: 1 put: 2.
	ts var: GrNodesVarDef colorVarNo at: 2 put: 5.
	self assert: (ts colorAt: 1) equals: 2.
	self assert: (ts colorAt: 2) equals: 5.