test
testWriteNodeLabel
	| w |
	w := self newWriter.
	w writeNodeLabel: 1.
	self assert: w stream contents equals: 's1'.
	w := self newWriter.
	w writeNodeLabel: 2.
	self assert: w stream contents equals: 's2'.
	w := self newWriter.
	w writeNodeLabel: 3.
	self assert: w stream contents equals: 's3'.