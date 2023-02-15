test
testCompatibleSelectorOf

	| obj spec1 spec2 dict |
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
	dict := Dictionary new
		        at: #xxx put: 'mno';
		        at: #zzz put: 'ghi';
		        yourself.
	obj compatibilityDictionary: dict.
	self assert: (obj compatibleSelectorOf: #xxx) identicalTo: #pqr.
	self assert: (obj compatibleSelectorOf: #zzz) identicalTo: #jkl.
	self assert: (obj compatibleSelectorOf: #yyy) isNil