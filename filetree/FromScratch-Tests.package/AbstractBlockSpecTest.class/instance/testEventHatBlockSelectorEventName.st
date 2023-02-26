test
testEventHatBlockSelectorEventName

	| obj |
	obj := AbstractBlockSpec
		       eventHatBlock: 'abc'
		       selector: #def
		       eventName: 'ghi'.
	self assert: (obj isKindOf: ScratchBlockSpec).
	self assert: obj isEventHatBlock.
	self assert: obj selector equals: #def.
	self assert: obj arguments first equals: 'ghi'