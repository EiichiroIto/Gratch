test
testAverageVar
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
	self assert: (ts averageVar: a) equals: 20.
	self assert: (ts averageVar: b) equals: 40