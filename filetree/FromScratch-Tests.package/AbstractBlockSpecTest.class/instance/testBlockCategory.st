test
testBlockCategory

	| obj |
	obj := AbstractBlockSpec blockCategory: 'abc'.
	self assert: (obj isKindOf: ScratchBlockCategory).
	self assert: obj isCategory.
	self assert: obj categoryName equals: 'abc'