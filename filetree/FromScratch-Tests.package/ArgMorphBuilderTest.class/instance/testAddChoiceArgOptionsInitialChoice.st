test
testAddChoiceArgOptionsInitialChoice

	| b a |
	b := self newBuilder.
	b addChoiceArg: $x options: #( abc def ) initialChoice: 'def'.
	a := b uncoloredArgMorphFor: #( 1 $x ).
	self assert: (a isKindOf: StaticChoiceArgMorph).
	self assertCollection: a options equals: #( abc def ).
	self assert: a choice equals: 'def'