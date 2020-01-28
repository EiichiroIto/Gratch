test
testAddVariable
	| br a b |
	br := self newBreed.
	a := br addVariable: 'a'.
	b := br addVariable: 'b'.
	self assert: a ~= b.
	self assert: (br privVariables privVarNames includes: 'a' ).
	self assert: (br privVariables privVarNames includes: 'b' ).