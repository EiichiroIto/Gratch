test
testAndWith

	| t b r |
	b := self newGenerator.
	r := b and: (self literalValue: 1) with: (self literalValue: 1).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 1.

	b := self newGenerator.
	r := b and: (self literalValue: 1) with: (self literalValue: 0).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 0.

	b := self newGenerator.
	r := b and: (self literalValue: 0) with: (self literalValue: 1).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 0.

	b := self newGenerator.
	r := b and: (self literalValue: 0) with: (self literalValue: 0).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 0