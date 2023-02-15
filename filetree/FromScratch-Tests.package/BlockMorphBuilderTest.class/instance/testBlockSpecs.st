test
testBlockSpecs

	| obj spec1 spec2 |
	obj := self newBlockMorphBuilder.
	obj setCategory: 'abc' color: Color white.
	obj setCategory: 'def' color: Color black.
	spec1 := AbstractBlockSpec
		         command: 'ghi'
		         selector: #jkl
		         arguments: #( 1 2 ).
	obj registerBlockSpec: spec1 asCategory: 'def'.
	spec2 := AbstractBlockSpec
		         command: 'mno'
		         selector: #pqr
		         arguments: #(  ).
	obj registerBlockSpec: spec2 asCategory: 'stu'.
	self assertCollection: obj blockSpecs hasSameElements: { 
			spec1.
			spec2 }