test
testWriteString
	| w |
	w := self newWriter.
	w writeString: 'a'.
	self assert: w stream contents equals: '''a'''.
	w := self newWriter.
	w writeString: 'b'.
	self assert: w stream contents equals: '''b'''.
	w := self newWriter.
	w writeString: 'c'.
	self assert: w stream contents equals: '''c'''.