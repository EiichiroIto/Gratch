test
testPrivStream
	| w s |
	w := self newWriter.
	s := WriteStream on: ''.
	self assert: w privStream isStream.
	w privStream: s.
	self assert: w privStream equals: s