test
testMoreThan

	| t b r |
	b := self newGenerator.
	r := b less: (self literalValue: 12) than: (self literalValue: 3).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 0.

	b := self newGenerator.
	r := b less: (self literalValue: -10) than: (self literalValue: 3).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 1.

	b := self newGenerator.
	r := b more: (self literalValue: 5) than: (self literalValue: 5).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 0.

	b := self newGenerator.
	r := b more: (self literalValue: -2.5) than: (self literalValue: -2).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 0.

	b := self newGenerator.
	r := b more: (self literalValue: 2.5) than: (self literalValue: -2).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 1