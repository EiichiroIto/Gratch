test
testAliveAt

	| g |
	g := self newGraph.
	self assert: (g aliveAt: 1).
	self deny: (g aliveAt: 2)