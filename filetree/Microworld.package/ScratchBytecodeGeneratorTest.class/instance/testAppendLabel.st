test
testAppendLabel
	| b r |
	b := self newGenerator.
	self assert: b stream contents isEmpty.
	b appendLabel: 123.
	b appendLabel: 456.
	self assert: b stream contents size equals: 2.
	r := b stream contents first.
	self assert: r class equals: ScratchBytecodeLabel.
	self assert: r id equals: 123.
	r := b stream contents second.
	self assert: r class equals: ScratchBytecodeLabel.
	self assert: r id equals: 456.