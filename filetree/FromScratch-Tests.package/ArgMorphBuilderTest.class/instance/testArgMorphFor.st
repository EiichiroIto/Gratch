test
testArgMorphFor

	| obj r |
	obj := self newBuilder.
	obj addBooleanArg: $a.
	obj addChoiceArg: $b options: #( a b c ) initialChoice: #a.
	r := obj argMorphFor: $a.
	self assert: (r isKindOf: BooleanArgMorph).
	r := obj argMorphFor: $b.
	self assert: (r isKindOf: StaticChoiceArgMorph)