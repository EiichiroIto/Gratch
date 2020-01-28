test
testCreate
	| ts |
	ts := self newNodes.
	self assert: ts countAlive equals: 0.
	ts create: 10.
	self assert: ts countAlive equals: 10.