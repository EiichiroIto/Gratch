test
testAddCategory

	| builder |
	builder := self newBlockMorphBuilder.
	self assert: builder lastCategory isNil.
	builder addCategory: 'abc'.
	self assert: builder lastCategory equals: 'abc'.
	builder addCategory: 'def'.
	self assert: builder lastCategory equals: 'def'