test
testAddSeparator

	| builder blocks |
	builder := self newBlockMorphBuilder.
	builder addCategory: 'abc'.
	blocks := builder blocksFor: 'abc'.
	self assert: blocks isEmpty.
	builder addSeparator.
	blocks := builder blocksFor: 'abc'.
	self assert: blocks size equals: 1.
	self assert: blocks first isSeparator