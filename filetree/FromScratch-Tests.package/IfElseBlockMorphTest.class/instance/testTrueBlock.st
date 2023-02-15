test
testTrueBlock

	| b1 b2 |
	b1 := self newBlock.
	b2 := self newBlock.
	self assert: b1 trueBlock isNil.
	b1 trueBlock: b2.
	self assert: b1 trueBlock identicalTo: b2