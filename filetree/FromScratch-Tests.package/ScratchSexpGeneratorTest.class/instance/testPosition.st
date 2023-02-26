test
testPosition

	| gen |
	gen := self newGenerator.
	self assert: gen position equals: 0.
	gen position: 123.
	self assert: gen position equals: 123.
	gen position: 456.
	self assert: gen position equals: 456