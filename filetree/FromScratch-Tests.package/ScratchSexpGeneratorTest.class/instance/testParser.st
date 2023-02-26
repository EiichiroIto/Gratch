test
testParser

	| gen a |
	gen := self newGenerator.
	self assert: (gen parser isKindOf: ScratchBlockParser).
	a := ScratchBlockParser new.
	gen parser: a.
	self assert: gen parser identicalTo: a.
	self assert: a generator equals: gen