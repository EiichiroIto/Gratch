test
testRealVarNames
	| p |
	p := self newVarDef.
	self assertCollection: p realVarNames equals: #(color flag n1 n2).
	p addVariable: 'abc'.
	self assertCollection: p realVarNames equals: #(color flag n1 n2 abc).