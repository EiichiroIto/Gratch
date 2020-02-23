test
testClear
	| ts |
	ts := self newNodes.
	ts create: 100.
	self assert: ts countAlive equals: 100.
	ts clear.
	self assert: ts countAlive equals: 0.