test
testAddBooleanArg
	| b |
	b := self newBuilder.
	b addBooleanArg: $b.
	self assert: (b dict at: $b) isBlock.
	self
		assert: ((b uncoloredArgMorphFor: #(1 $b)) isKindOf: BooleanArgMorph)