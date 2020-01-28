test
testWriteDouble
	| w |
	w := self newWriter.
	w writeDouble: 0.
	self assert: w privStream contents equals: '0.0'.
	w := self newWriter.
	w writeDouble: 1.52.
	self assert: w privStream contents equals: '1.5'.
	w := self newWriter.
	w writeDouble: 10.
	self assert: w privStream contents equals: '10.0'.