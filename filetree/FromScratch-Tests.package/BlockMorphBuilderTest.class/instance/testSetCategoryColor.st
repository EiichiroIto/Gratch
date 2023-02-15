test
testSetCategoryColor

	| obj |
	obj := self newBlockMorphBuilder.
	obj setCategory: 'abc' color: Color white.
	obj setCategory: 'def' color: Color black.
	self assert: obj categoryColors size equals: 2.
	self assert: (obj categoryColors at: 'abc') equals: Color white.
	self assert: (obj categoryColors at: 'def') equals: Color black