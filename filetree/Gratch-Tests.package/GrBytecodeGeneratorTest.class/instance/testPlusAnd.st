test
testPlusAnd

	| t b r |
	b := self newGenerator.
	r := b plus: (self literalValue: 12) and: (self literalValue: 3).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 15.

	b := self newGenerator.
	r := b plus: (self literalValue: 10) and: (self literalValue: -3).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 7.

	b := self newGenerator.
	r := b plus: (self literalValue: 1.5) and: (self literalValue: 5).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 6.5.

	b := self newGenerator.
	r := b plus: (self literalValue: -2) and: (self literalValue: -4).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: -6