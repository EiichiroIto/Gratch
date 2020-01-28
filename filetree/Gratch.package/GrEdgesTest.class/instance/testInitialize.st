test
testInitialize
	| ts |
	ts := self newEdges.
	self assert: ts varId class equals: GrEdgesVarDef.
	self assert: ts privVariables class equals: Variables.
	self assert: ts countAlive equals: 0.