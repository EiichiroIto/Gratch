test
testIsConnectedFromTo
	| e |
	e := self newEdges.
	e var: GrEdgesVarDef n1VarNo at: 1 put: 1.
	e var: GrEdgesVarDef n2VarNo at: 1 put: 2.
	e var: GrEdgesVarDef n1VarNo at: 2 put: 1.
	e var: GrEdgesVarDef n2VarNo at: 2 put: 3.
	e var: GrEdgesVarDef n1VarNo at: 3 put: 2.
	e var: GrEdgesVarDef n2VarNo at: 3 put: 3.
	self assert: (e isConnected: 1 from: 1 to: 2).
	self deny: (e isConnected: 2 from: 1 to: 2).
	self deny: (e isConnected: 3 from: 1 to: 2).
	self deny: (e isConnected: 1 from: 1 to: 3).
	self assert: (e isConnected: 2 from: 1 to: 3).
	self deny: (e isConnected: 3 from: 1 to: 3).
	self deny: (e isConnected: 1 from: 2 to: 3).
	self deny: (e isConnected: 2 from: 2 to: 3).
	self assert: (e isConnected: 3 from: 2 to: 3).