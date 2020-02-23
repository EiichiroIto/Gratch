test
testBroadcast
	| g |
	g := self newGenerator.
	g broadcast: 10.
	self
		assertCollection: g code
		equals: {#pushShort . 10 . 0 . #broadcast . #stop}