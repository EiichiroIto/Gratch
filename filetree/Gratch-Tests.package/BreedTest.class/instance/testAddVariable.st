test
testAddVariable
	| br a b |
	br := self newBreed.
	a := br addVariable: 'a'.
	b := br addVariable: 'b'.
	self assert: a ~= b.
	self assert: (br variables privVarNames includes: 'a' ).
	self assert: (br variables privVarNames includes: 'b' ).