test
testSetupAt
	| ts |
	ts := self newEdges.
	ts create: 3.
	ts setupAt: 1.
	ts setupAt: 2.
	ts setupAt: 3.
	self assert: (ts var: GrEdgesVarDef n1VarNo at: 1) equals: 0.
	self assert: (ts var: GrEdgesVarDef n2VarNo at: 1) equals: 0.
	self assert: (ts var: GrEdgesVarDef n1VarNo at: 2) equals: 0.
	self assert: (ts var: GrEdgesVarDef n2VarNo at: 2) equals: 0.
	self assert: (ts var: GrEdgesVarDef n1VarNo at: 3) equals: 0.
	self assert: (ts var: GrEdgesVarDef n2VarNo at: 3) equals: 0.