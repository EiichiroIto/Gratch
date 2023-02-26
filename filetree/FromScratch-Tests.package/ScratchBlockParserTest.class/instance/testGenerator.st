test
testGenerator

	| gen parser |
	parser := self newParser.
	self assert: parser generator isNil.
	gen := self newGenerator.
	parser generator: gen.
	self assert: parser generator identicalTo: gen