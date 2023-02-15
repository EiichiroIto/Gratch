test
testBlockSelectorOf

	| obj spec |
	obj := self newBlockMorphBuilder.
	obj setCategory: 'abc' color: Color white.
	obj setCategory: 'def' color: Color black.
	spec := AbstractBlockSpec
		        command: 'ghi'
		        selector: #jkl
		        arguments: #( 1 2 ).
	obj registerBlockSpec: spec asCategory: 'def'.
	spec := AbstractBlockSpec
		        command: 'mno'
		        selector: #pqr
		        arguments: #(  ).
	obj registerBlockSpec: spec asCategory: 'stu'.
	self assert: (obj blockSelectorOf: #'ghi') equals: 'jkl'.
	self assert: (obj blockSelectorOf: #'mno') equals: 'pqr'