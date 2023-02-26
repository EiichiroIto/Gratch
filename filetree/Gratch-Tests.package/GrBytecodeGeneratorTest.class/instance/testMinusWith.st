test
testMinusWith

	| t b r |
	b := self newGenerator.
	r := b minus: (self literalValue: 12) with: (self literalValue: 3).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 9.

	b := self newGenerator.
	r := b minus: (self literalValue: 10) with: (self literalValue: -3).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 13.

	b := self newGenerator.
	r := b minus: (self literalValue: 1.5) with: (self literalValue: 5).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: -3.5.

	b := self newGenerator.
	r := b minus: (self literalValue: -2) with: (self literalValue: -4).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 2