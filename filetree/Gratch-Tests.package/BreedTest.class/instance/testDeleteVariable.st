test
testDeleteVariable
	| br a b |
	br := self newBreed.
	a := br addVariable: 'a'.
	b := br addVariable: 'b'.
	self assert: a ~= b.
	br deleteVariable: 'b'.
	self assert: (br variables privVarNames includes: 'a' ).
	self deny: (br variables privVarNames includes: 'b' ).
	self assert: (br varDef privVarNames includes: 'a' ).
	self deny: (br varDef privVarNames includes: 'b' ).