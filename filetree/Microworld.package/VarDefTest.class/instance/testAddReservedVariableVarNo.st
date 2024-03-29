test
testAddReservedVariableVarNo
	| v a b |
	v := self newVarDef.
	b := v addReservedVariable: 'b' varNo: 1.
	a := v addVariable: 'a'.
	self assert: b equals: 1.
	self assert: a equals: 2.
	self assert: v privVarNames size equals: 2.
	self assert: (v privVarNames includes: 'a').
	self assert: (v privVarNames includes: 'b').
	self assert: v privReservedVarNames size equals: 1.
	self assert: (v privReservedVarNames includes: 'b').
	self assertCollection: v privVarClasses size equals: 2.
	self assert: (v privVarClasses at: 'a') equals: #Float32Array.
	self assert: (v privVarClasses at: 'b') equals: #Float32Array.