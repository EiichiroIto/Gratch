test
testCallSub

	| b r |
	b := self newGenerator.
	b subTable: { 
			('abc' -> 9).
			('def' -> 3) } asDictionary.
	b return: (self literalValue: 1).
	b callSub: (self choice: 'def').
	b address: 5.
	r := b code.
	self
		assertCollection: r
		equals: #( push1 return pushShort 3 0 call stop )