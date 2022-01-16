test
testMaxVar
	| ts a b |
	ts := self newNodes.
	ts create: 3.
	a := ts addVariable: 'a'.
	b := ts addVariable: 'b'.
	ts var: a at: 1 put: 10.
	ts var: a at: 2 put: 30.
	ts var: a at: 3 put: 20.
	ts var: b at: 1 put: 40.
	ts var: b at: 2 put: 30.
	ts var: b at: 3 put: 50.
	self assert: (ts maxVar: a) equals: 30.
	self assert: (ts maxVar: b) equals: 50