test
testCopyFromTo
	| ts a b |
	ts := self newNodes.
	a := ts addVariable: 'a'.
	b := ts addVariable: 'b'.
	ts var: a at: 1 put: 1.
	ts var: b at: 1 put: 2.
	ts var: a at: 2 put: 3.
	ts var: b at: 2 put: 4.
	ts copyFrom: 1 to: 2.
	self assert: (ts var: a at: 1) equals: 1.
	self assert: (ts var: b at: 1) equals: 2.
	self assert: (ts var: a at: 2) equals: 1.
	self assert: (ts var: b at: 2) equals: 2.