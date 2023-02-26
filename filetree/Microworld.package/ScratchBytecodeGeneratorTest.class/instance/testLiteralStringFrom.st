test
testLiteralStringFrom

	| gen |
	gen := self newGenerator.
	self assert: (gen literalStringFrom: 'abc') equals: 0.
	self assert: (gen literalStringFrom: 123) equals: 123.
	self assert: (gen literalStringFrom: '456') equals: 456