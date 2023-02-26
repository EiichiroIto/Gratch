test
testRounded
	| t b r |
	b := self newGenerator.
	r := b rounded: (self literalValue: 10).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 10.

	b := self newGenerator.
	r := b rounded: (self literalValue: 10.2).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 10.

	b := self newGenerator.
	r := b rounded: (self literalValue: 10.5).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 11.

	b := self newGenerator.
	r := b rounded: (self literalValue: -10.5).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: -11.