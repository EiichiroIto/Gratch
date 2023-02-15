test
testRegisterBlockSpecAsCategory

	| obj spec |
	obj := self newBlockMorphBuilder.
	obj setCategory: 'abc' color: Color white.
	obj setCategory: 'def' color: Color black.
	spec := AbstractBlockSpec
		        command: 'ghi'
		        selector: #jkl
		        arguments: #( 1 2 ).
	self assert: obj blockSpecsInCategory isEmpty.
	self assert: obj blockSpecDictionary isEmpty.
	obj registerBlockSpec: spec asCategory: 'def'.
	self assert: (obj blockSpecsInCategory at: 'def') isCollection.
	self assert: (obj blockSpecsInCategory at: 'def') first identicalTo: spec.
	self assert: (obj blockSpecDictionary at: #jkl) identicalTo: spec.
	self assert: spec color equals: Color black.
	spec := AbstractBlockSpec
		        command: 'mno'
		        selector: #pqr
		        arguments: #(  ).
	obj registerBlockSpec: spec asCategory: 'stu'.
	self assert: (obj blockSpecsInCategory at: 'stu') isCollection.
	self assert: (obj blockSpecsInCategory at: 'stu') first identicalTo: spec.
	self assert: (obj blockSpecDictionary at: #pqr) identicalTo: spec.
	self assert: spec color equals: Color gray