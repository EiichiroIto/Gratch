test
testBlockCategories

	| obj |
	obj := self newBlockMorphBuilder.
	self assert: obj blockCategories isEmpty.
	obj setCategory: 'abc' color: Color white.
	obj setCategory: 'list' color: Color pink.
	obj setCategory: 'def' color: Color black.
	self
		assertCollection: obj blockCategories
		hasSameElements: #( abc def )