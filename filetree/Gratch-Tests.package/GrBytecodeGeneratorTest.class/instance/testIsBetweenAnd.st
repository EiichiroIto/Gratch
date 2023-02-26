test
testIsBetweenAnd

	| t b r |
	b := self newGenerator.
	r := b
		     is: (self literalValue: 10)
		     between: (self literalValue: 3)
		     and: (self literalValue: 12).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 1.

	b := self newGenerator.
	r := b
		     is: (self literalValue: 10)
		     between: (self literalValue: 10)
		     and: (self literalValue: 12).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 1.

	b := self newGenerator.
	r := b
		     is: (self literalValue: 12)
		     between: (self literalValue: 10)
		     and: (self literalValue: 12).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 1.

	b := self newGenerator.
	r := b
		     is: (self literalValue: 9)
		     between: (self literalValue: 10)
		     and: (self literalValue: 12).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 0.

	b := self newGenerator.
	r := b
		     is: (self literalValue: 13)
		     between: (self literalValue: 10)
		     and: (self literalValue: 12).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 0