test
testKillAt
	| e list |
	e := self newEdges.
	list := e create: 4.
	e var: GrEdgesVarDef n1VarNo at: list first put: 3.
	e var: GrEdgesVarDef n2VarNo at: list first put: 3.
	e var: GrEdgesVarDef n1VarNo at: list second put: 3.
	e var: GrEdgesVarDef n1VarNo at: list third put: 3.
	e var: GrEdgesVarDef n2VarNo at: list third put: 3.
	e var: GrEdgesVarDef n2VarNo at: list fourth put: 3.
	self assert: (e aliveAt: 1).
	self deny: (e aliveAt: 2).
	self assert: (e aliveAt: 3).
	self deny: (e aliveAt: 4).
	list do: [ :each | e killAt: each ].
	self deny: (e aliveAt: 1).
	self deny: (e aliveAt: 2).
	self deny: (e aliveAt: 3).
	self deny: (e aliveAt: 4)