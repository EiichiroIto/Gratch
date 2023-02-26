test
testNegated

	| t b r |
	b := self newGenerator.
	r := b negated: (self literalValue: 12).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: -12.

	b := self newGenerator.
	r := b negated: (self literalValue: -5).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 5