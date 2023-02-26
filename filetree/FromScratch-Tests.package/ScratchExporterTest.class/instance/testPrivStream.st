test
testPrivStream
	| e s |
	e := self newExporter.
	self assert: e stream isNil.
	s := WriteStream on: ''.
	e privStream: s.
	self assert: e stream equals: s.