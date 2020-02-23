test
testWriteLabel
	| w |
	w := self newWriter.
	w writeLabel: 'a'.
	self assert: w privStream contents equals: 'a'.
	w := self newWriter.
	w writeLabel: 'b'.
	self assert: w privStream contents equals: 'b'.
	w := self newWriter.
	w writeLabel: 'c'.
	self assert: w privStream contents equals: 'c'.