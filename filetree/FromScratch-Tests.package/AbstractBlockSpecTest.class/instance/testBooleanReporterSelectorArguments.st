test
testBooleanReporterSelectorArguments

	| obj |
	obj := AbstractBlockSpec
		       booleanReporter: 'abc'
		       selector: #def
		       arguments: #(  ).
	self assert: (obj isKindOf: ScratchBlockSpec).
	self assert: obj isBooleanReporter