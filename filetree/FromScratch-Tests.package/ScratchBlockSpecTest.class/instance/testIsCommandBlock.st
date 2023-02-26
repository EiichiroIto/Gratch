test
testIsCommandBlock

	| obj |
	obj := self newObj.
	self deny: obj isCommandBlock.
	obj type: #isCommandBlock.
	self assert: obj isCommandBlock