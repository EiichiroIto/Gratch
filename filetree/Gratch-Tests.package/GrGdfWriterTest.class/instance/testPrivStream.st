test
testPrivStream
	| w s |
	w := self newWriter.
	s := WriteStream on: ''.
	self assert: w stream isStream.
	w privStream: s.
	self assert: w stream equals: s