test
testBlockSpecAt

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
	self assert: (obj blockSpecAt: #jkl) identicalTo: spec1.
	self assert: (obj blockSpecAt: #pqr) identicalTo: spec2.
	self assert: (obj blockSpecAt: #zzz) isNil.
	dict := Dictionary new
		        at: #pqr put: 'ghi';
		        at: #zzz put: 'ghi';
		        yourself.
	obj compatibilityDictionary: dict.
	self assert: (obj blockSpecAt: #jkl) identicalTo: spec1.
	self assert: (obj blockSpecAt: #pqr) identicalTo: spec2.
	self assert: (obj blockSpecAt: #zzz) identicalTo: spec1.
	self assert: (obj blockSpecAt: #yyy) isNil