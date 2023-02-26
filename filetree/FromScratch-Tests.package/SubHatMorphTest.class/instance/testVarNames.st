test
testVarNames

	| obj |
	obj := self newMorph.
	obj receiver: ScTestScript new.
	self assertCollection: obj varNames hasSameElements: #( a 'b c' )