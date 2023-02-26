test
testNullaryCommand
	| b r |
	b := self newGenerator.
	self assert: b stream contents isEmpty.
	b nullaryCommand: #abc.
	self assert: b stream contents size equals: 1.
	r := b stream contents first.
	self assert: r class equals: ScratchBytecodeSymbol.
	self assert: r selector equals: #abc.