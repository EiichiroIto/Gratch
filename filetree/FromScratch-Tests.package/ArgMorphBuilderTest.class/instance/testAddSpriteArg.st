test
testAddSpriteArg
	| b |
	b := self newBuilder.
	b addSpriteArg: $e.
	self assert: (b dict at: $e) isBlock.
	self
		assert: ((b uncoloredArgMorphFor: #(1 $e)) isKindOf: SpriteArgMorph)