test
testIsStartHatBlock

	| obj |
	obj := self newObj.
	self deny: obj isStartHatBlock.
	obj type: #isStartHatBlock.
	self assert: obj isStartHatBlock