test
testAddEventTitleArg
	| b |
	b := self newBuilder.
	b addEventTitleArg: $e.
	self assert: (b dict at: $e) isBlock.
	self
		assert: ((b uncoloredArgMorphFor: #(1 $e)) isKindOf: EventTitleMorph)