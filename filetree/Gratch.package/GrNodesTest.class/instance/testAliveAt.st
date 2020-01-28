test
testAliveAt
	| ts |
	ts := self newNodes.
	ts clear.
	ts create: 2.
	self assert: ts countAlive equals: 2.
	ts killAt: 1.
	self assert: ts countAlive equals: 1.