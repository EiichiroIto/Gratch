test
testIsEventHatBlock

	| obj |
	obj := self newObj.
	self deny: obj isEventHatBlock.
	obj type: #isEventHatBlock.
	self assert: obj isEventHatBlock