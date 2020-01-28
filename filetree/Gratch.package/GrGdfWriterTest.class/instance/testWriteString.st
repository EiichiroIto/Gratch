test
testWriteString
	| w |
	w := self newWriter.
	w writeString: 'a'.
	self assert: w privStream contents equals: '''a'''.
	w := self newWriter.
	w writeString: 'b'.
	self assert: w privStream contents equals: '''b'''.
	w := self newWriter.
	w writeString: 'c'.
	self assert: w privStream contents equals: '''c'''.