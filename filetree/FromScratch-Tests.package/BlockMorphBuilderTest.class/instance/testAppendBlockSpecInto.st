test
testAppendBlockSpecInto

	| obj spec1 spec2 spec3 list |
	obj := self newBlockMorphBuilder.
	obj setCategory: 'abc' color: Color white.
	spec1 := AbstractBlockSpec
		         command: 'ghi'
		         selector: #jkl
		         arguments: #( 1 2 ).
	obj appendBlockSpec: spec1 into: 'abc'.
	spec2 := AbstractBlockSpec separator.
	obj appendBlockSpec: spec2 into: 'abc'.
	spec3 := AbstractBlockSpec
		         command: 'mno'
		         selector: #pqr
		         arguments: #(  ).
	obj appendBlockSpec: spec3 into: 'abc'.
	list := obj blockSpecsInCategory at: 'abc'.
	self assert: list isCollection.
	self assert: list size equals: 3.
	self assert: list first identicalTo: spec1.
	self assert: list second identicalTo: spec2.
	self assert: list third identicalTo: spec3