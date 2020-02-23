test
testPointAt
	| ts |
	ts := self newNodes.
	ts create: 2.
	ts pointAt: 1 put: 10 @ 20.
	ts pointAt: 2 put: 5 @ 8.
	self assert: (ts pointAt: 1) equals: 10 @ 20.
	self assert: (ts pointAt: 2) equals: 5 @ 8