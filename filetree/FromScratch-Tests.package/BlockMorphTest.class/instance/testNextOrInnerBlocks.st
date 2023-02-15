test
testNextOrInnerBlocks

	| b1 b2 b3 |
	b1 := self newBlock.
	b2 := self newBlock.
	b3 := self newBlock.
	self assert: b1 nextOrInnerBlocks isArray.
	self assert: b1 nextOrInnerBlocks isEmpty.
	b1 nextBlock: b2.
	b2 nextBlock: b3.
	self assert: b1 nextOrInnerBlocks size equals: 1.
	self assert: b1 nextOrInnerBlocks first identicalTo: b2.
	self assert: b2 nextOrInnerBlocks size equals: 1.
	self assert: b2 nextOrInnerBlocks first identicalTo: b3.
	self assert: b3 nextOrInnerBlocks isEmpty