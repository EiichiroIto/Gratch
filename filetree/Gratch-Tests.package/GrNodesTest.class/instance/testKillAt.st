test
testKillAt
	| ts |
	ts := self newNodes.
	ts clear.
	ts create: 3.
	self assert: ts countAlive equals: 3.
	ts killAt: 1.
	ts killAt: 2.
	self assert: ts countAlive equals: 1.