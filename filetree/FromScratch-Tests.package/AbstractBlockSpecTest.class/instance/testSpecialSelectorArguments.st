test
testSpecialSelectorArguments

	| obj |
	obj := AbstractBlockSpec
		       special: 'abc'
		       selector: #def
		       arguments: #(  ).
	self assert: (obj isKindOf: ScratchBlockSpec).
	self assert: obj isSpecialForm