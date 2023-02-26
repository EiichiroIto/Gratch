test
testIsCBlock

	| obj |
	obj := self newObj.
	self deny: obj isCBlock.
	obj type: #isCBlock.
	self assert: obj isCBlock