test
testTruncated

	| t b r |
	b := self newGenerator.
	r := b truncated: (self literalValue: 10).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 10.

	b := self newGenerator.
	r := b truncated: (self literalValue: 10.2).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 10.

	b := self newGenerator.
	r := b truncated: (self literalValue: 10.5).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 10.

	b := self newGenerator.
	r := b truncated: (self literalValue: -10.5).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: -10