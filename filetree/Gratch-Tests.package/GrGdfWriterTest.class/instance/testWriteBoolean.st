test
testWriteBoolean
	| w |
	w := self newWriter.
	w writeBoolean: true.
	self assert: w stream contents equals: 'true'.
	w := self newWriter.
	w writeBoolean: false.
	self assert: w stream contents equals: 'false'.