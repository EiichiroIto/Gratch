test
testPrivVarId
	| b |
	b := self newBreed.
	self assert: b privVarId class equals: VarDef.