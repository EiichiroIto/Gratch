test
testCode
	| b arr |
	b := self newGenerator.
	b plus: (self literalValue: 1) and: (self literalValue: 2).
	b minus: (self literalValue: 3) with: (self literalValue: 5).
	arr := b code.
	self
		assertCollection: arr
		equals: #(push1 pushShort 2 0 plus pushShort 3 0 pushShort 5 0 minus stop)