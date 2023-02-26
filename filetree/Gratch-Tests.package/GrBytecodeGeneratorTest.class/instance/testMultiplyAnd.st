test
testMultiplyAnd

	| t b r |
	b := self newGenerator.
	r := b multiply: (self literalValue: 12) and: (self literalValue: 3).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 36.

	b := self newGenerator.
	r := b multiply: (self literalValue: 10) and: (self literalValue: -3).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: -30.

	b := self newGenerator.
	r := b multiply: (self literalValue: 1.5) and: (self literalValue: 5).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 7.5.

	b := self newGenerator.
	r := b multiply: (self literalValue: -2) and: (self literalValue: -4).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 8