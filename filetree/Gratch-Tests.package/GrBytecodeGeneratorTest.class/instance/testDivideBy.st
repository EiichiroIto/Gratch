test
testDivideBy

	| t b r |
	b := self newGenerator.
	r := b divide: (self literalValue: 100) by: (self literalValue: 2).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 50.

	b := self newGenerator.
	r := b divide: (self literalValue: 12) by: (self literalValue: 3).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 4.

	b := self newGenerator.
	r := b divide: (self literalValue: 10) by: (self literalValue: -2).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: -5.

	b := self newGenerator.
	r := b divide: (self literalValue: 1) by: (self literalValue: 5).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 0.2.

	b := self newGenerator.
	r := b divide: (self literalValue: 2) by: (self literalValue: -4).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: -0.5