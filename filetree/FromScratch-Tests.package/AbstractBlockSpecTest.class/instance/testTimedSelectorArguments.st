test
testTimedSelectorArguments

	| obj |
	obj := AbstractBlockSpec timed: 'abc' selector: #def arguments: #(  ).
	self assert: (obj isKindOf: ScratchBlockSpec).
	self assert: obj isTimedBlock