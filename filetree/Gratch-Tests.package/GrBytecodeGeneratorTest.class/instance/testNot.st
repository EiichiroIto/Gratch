test
testNot

	| t b r |
	b := self newGenerator.
	r := b not: (self literalValue: 1).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 0.

	b := self newGenerator.
	r := b not: (self literalValue: 0).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 1