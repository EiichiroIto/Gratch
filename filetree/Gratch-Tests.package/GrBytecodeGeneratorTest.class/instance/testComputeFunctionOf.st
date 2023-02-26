test
testComputeFunctionOf

	| t b r |
	b := self newGenerator.
	r := b
		     computeFunction: (self choice: #abs)
		     of: (self literalValue: -1).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 1.

	b := self newGenerator.
	r := b
		     computeFunction: (self choice: #abs)
		     of: (self literalValue: 10).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 10.

	b := self newGenerator.
	r := b
		     computeFunction: (self choice: #sqrt)
		     of: (self literalValue: 2).
	self assert: r isNil.
	t := self newThread.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 2 sqrt