test
testReporterSelectorArguments

	| obj |
	obj := AbstractBlockSpec
		       reporter: 'abc'
		       selector: #def
		       arguments: #(  ).
	self assert: (obj isKindOf: ScratchBlockSpec).
	self assert: obj isReporterBlock