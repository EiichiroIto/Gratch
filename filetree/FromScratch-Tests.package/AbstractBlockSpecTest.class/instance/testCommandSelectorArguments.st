test
testCommandSelectorArguments

	| obj |
	obj := AbstractBlockSpec
		       command: 'abc'
		       selector: #def
		       arguments: #(  ).
	self assert: (obj isKindOf: ScratchBlockSpec).
	self assert: obj isCommandBlock