test
testCopyVarTo
	| var varId v1 v2 |
	var := self newVariables.
	varId := self newVarDef.
	v1 := varId addVariable: 'a'.
	v2 := varId addVariable: 'b'.
	var updateVarDef: varId.
	var var: v1 at: 1 put: 10.
	var var: v1 at: 2 put: 11.
	var var: v2 at: 1 put: 20.
	var var: v2 at: 2 put: 21.
	self assert: (var var: v1 at: 1) equals: 10.
	self assert: (var var: v1 at: 2) equals: 11.
	self assert: (var var: v2 at: 1) equals: 20.
	self assert: (var var: v2 at: 2) equals: 21.
	var copyVar: v1 to: v2.
	self assert: (var var: v1 at: 1) equals: 10.
	self assert: (var var: v1 at: 2) equals: 11.
	self assert: (var var: v2 at: 1) equals: 10.
	self assert: (var var: v2 at: 2) equals: 11