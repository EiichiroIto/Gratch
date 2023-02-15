test
testFalseBlock

	| b1 b2 |
	b1 := self newBlock.
	b2 := self newBlock.
	self assert: b1 falseBlock isNil.
	b1 falseBlock: b2.
	self assert: b1 falseBlock identicalTo: b2