test
testDegreesAt
	| e |
	e := self newEdges.
	e create: 4.
	e var: GrEdgesVarDef n1VarNo at: 1 put: 1.
	e var: GrEdgesVarDef n2VarNo at: 1 put: 2.
	e var: GrEdgesVarDef n1VarNo at: 2 put: 3.
	e var: GrEdgesVarDef n2VarNo at: 2 put: 1.
	e var: GrEdgesVarDef n1VarNo at: 3 put: 2.
	e var: GrEdgesVarDef n2VarNo at: 3 put: 3.
	e var: GrEdgesVarDef n1VarNo at: 4 put: 1.
	e var: GrEdgesVarDef n2VarNo at: 4 put: 2.
	self assert: (e degreesAt: 1) equals: 3.
	self assert: (e degreesAt: 2) equals: 3.
	self assert: (e degreesAt: 3) equals: 2.
	self assert: (e degreesAt: 4) equals: 0