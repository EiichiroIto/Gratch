test
testTernaryCommandArg1Arg2Arg3
	| b r |
	b := self newGenerator.
	self assert: b stream contents isEmpty.
	b ternaryCommand: #abc arg1: 123 arg2: 456 arg3: 789.
	self assert: b stream contents size equals: 4.
	r := b stream contents first.
	self assert: r class equals: ScratchBytecodeValue.
	self assert: r data equals: 123.
	r := b stream contents second.
	self assert: r class equals: ScratchBytecodeValue.
	self assert: r data equals: 456.
	r := b stream contents third.
	self assert: r class equals: ScratchBytecodeValue.
	self assert: r data equals: 789.
	r := b stream contents fourth.
	self assert: r class equals: ScratchBytecodeSymbol.
	self assert: r selector equals: #abc.