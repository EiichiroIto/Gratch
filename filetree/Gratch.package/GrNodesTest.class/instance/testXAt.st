test
testXAt
	| ts |
	ts := self newNodes.
	ts clear.
	ts create: 2.
	self assert: (ts xAt: 1) equals: 0.
	self assert: (ts xAt: 2) equals: 0.
	ts xAt: 1 put: 10.
	ts xAt: 2 put: 20.
	self assert: (ts xAt: 1) equals: 10.
	self assert: (ts xAt: 2) equals: 20