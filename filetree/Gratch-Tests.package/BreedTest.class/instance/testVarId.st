test
testVarId
	| obj |
	obj := self newBreed.
	self assert: obj varId class equals: VarDef.
	obj := GrNodes new.
	self assert: obj varId class equals: GrNodesVarDef.
	obj := GrEdges new.
	self assert: obj varId class equals: GrEdgesVarDef.