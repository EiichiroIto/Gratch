test
testInitialize
	| ts |
	ts := self newEdges.
	self assert: ts varDef class equals: GrEdgesVarDef.
	self assert: ts variables class equals: Variables.
	self assert: ts countAlive equals: 0.