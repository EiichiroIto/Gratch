test
testModBy

	| t b r |
	b := self newGenerator.
	r := b mod: (self literalValue: 12) by: (self literalValue: 3).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 0.

	b := self newGenerator.
	r := b mod: (self literalValue: 10) by: (self literalValue: -3).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: -2.

	b := self newGenerator.
	r := b mod: (self literalValue: 1) by: (self literalValue: 5).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 1.

	b := self newGenerator.
	r := b mod: (self literalValue: -2) by: (self literalValue: 4).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 2