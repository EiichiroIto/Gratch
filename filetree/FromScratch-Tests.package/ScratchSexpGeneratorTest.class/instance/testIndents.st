test
testIndents

	| gen a |
	gen := self newGenerator.
	self assert: gen indents isArray.
	self assert: gen indents size equals: 1.
	self assert: gen indents first equals: 0.
	a := #(1 2 3).
	gen indents: a.
	self assert: gen indents identicalTo: a