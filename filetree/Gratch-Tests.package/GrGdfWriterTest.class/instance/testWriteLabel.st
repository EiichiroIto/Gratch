test
testWriteLabel
	| w |
	w := self newWriter.
	w writeLabel: 'a'.
	self assert: w stream contents equals: 'a'.
	w := self newWriter.
	w writeLabel: 'b'.
	self assert: w stream contents equals: 'b'.
	w := self newWriter.
	w writeLabel: 'c'.
	self assert: w stream contents equals: 'c'.