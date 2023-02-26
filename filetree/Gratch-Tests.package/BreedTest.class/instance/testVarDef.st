test
testVarDef
	| obj |
	obj := self newBreed.
	self assert: obj varDef class equals: VarDef.
	obj := GrNodes new.
	self assert: obj varDef class equals: GrNodesVarDef.
	obj := GrEdges new.
	self assert: obj varDef class equals: GrEdgesVarDef.