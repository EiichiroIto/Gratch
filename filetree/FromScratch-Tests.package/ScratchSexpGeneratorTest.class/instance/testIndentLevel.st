test
testIndentLevel

	| gen |
	gen := self newGenerator.
	self assert: gen indentLevel equals: 1.
	gen indentLevel: 123.
	self assert: gen indentLevel equals: 123.
	gen indentLevel: 456.
	self assert: gen indentLevel equals: 456