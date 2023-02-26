test
testStream

	| gen a |
	gen := self newGenerator.
	self assert: (gen stream isKindOf: WriteStream).
	a := WriteStream on: String new.
	gen stream: a.
	self assert: gen stream identicalTo: a