test
testStartHatBlockSelectorEventName

	| obj |
	obj := AbstractBlockSpec
		       startHatBlock: 'abc'
		       selector: #def.
	self assert: (obj isKindOf: ScratchBlockSpec).
	self assert: obj isStartHatBlock.
	self assert: obj selector equals: #def.
	self assert: obj arguments isEmpty