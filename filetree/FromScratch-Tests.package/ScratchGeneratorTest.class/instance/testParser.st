test
testParser

	| gen parser |
	gen := self newGenerator.
	self assert: gen parser isNil.
	parser := self newParser.
	gen parser: parser.
	self assert: gen parser identicalTo: parser