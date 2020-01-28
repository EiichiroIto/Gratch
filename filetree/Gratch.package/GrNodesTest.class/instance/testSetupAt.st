test
testSetupAt
	| ts |
	ts := self newNodes.
	ts create: 3.
	ts setupAt: 1.
	ts setupAt: 2.
	ts setupAt: 3.
	self assert: (ts aliveAt: 1).
	self assert: (ts aliveAt: 2).
	self assert: (ts aliveAt: 3).