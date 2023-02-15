test
testNestedBlock

	| b1 b2 |
	b1 := self newBlock.
	b2 := self newBlock.
	self assert: b1 nestedBlock isNil.
	b1 nestedBlock: b2.
	self assert: b1 nestedBlock identicalTo: b2