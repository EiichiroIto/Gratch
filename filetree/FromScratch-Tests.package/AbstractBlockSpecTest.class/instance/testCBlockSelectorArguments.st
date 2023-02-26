test
testCBlockSelectorArguments

	| obj |
	obj := AbstractBlockSpec
		       cBlock: 'abc'
		       selector: #def
		       arguments: #(  ).
	self assert: (obj isKindOf: ScratchBlockSpec).
	self assert: obj isCBlock