test
testAppendValue
	| b r |
	b := self newGenerator.
	self assert: b stream contents isEmpty.
	b appendValue: 123.
	b appendValue: 456.
	self assert: b stream contents size equals: 2.
	r := b stream contents first.
	self assert: r class equals: ScratchBytecodeValue.
	self assert: r data equals: 123.
	r := b stream contents second.
	self assert: r class equals: ScratchBytecodeValue.
	self assert: r data equals: 456.