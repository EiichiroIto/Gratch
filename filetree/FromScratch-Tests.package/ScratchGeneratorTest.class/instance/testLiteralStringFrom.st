test
testLiteralStringFrom

	| gen |
	gen := self newGenerator.
	self assert: (gen literalStringFrom: 'abc') equals: 'abc'.
	self assert: (gen literalStringFrom: 123) equals: '123'