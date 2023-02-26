test
testAppendSymbol
	| b r |
	b := self newGenerator.
	self assert: b stream contents isEmpty.
	b appendSymbol: #abc.
	b appendSymbol: #def.
	self assert: b stream contents size equals: 2.
	r := b stream contents first.
	self assert: r class equals: ScratchBytecodeSymbol.
	self assert: r selector equals: #abc.
	r := b stream contents second.
	self assert: r class equals: ScratchBytecodeSymbol.
	self assert: r selector equals: #def.