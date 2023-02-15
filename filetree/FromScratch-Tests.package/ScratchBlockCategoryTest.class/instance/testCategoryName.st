test
testCategoryName

	| obj |
	obj := self newObj.
	self assert: obj categoryName isNil.
	obj categoryName: 'abc'.
	self assert: obj categoryName equals: 'abc'.
	obj categoryName: 'def'.
	self assert: obj categoryName equals: 'def'