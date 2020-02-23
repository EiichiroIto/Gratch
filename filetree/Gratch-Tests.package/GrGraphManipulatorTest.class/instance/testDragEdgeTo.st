test
testDragEdgeTo
	| m d p1 p2 |
	m := self newManipulator.
	d := m grDisplay.
	self assert: d privEdgePoints isNil.
	p1 := d graphPointToWorld: 10 @ 20.
	p2 := d graphPointToWorld: 30 @ 40.
	m privStartPoint: p1.
	m dragEdgeTo: p2.
	self assert: d privEdgePoints size equals: 2.
	self assert: d privEdgePoints first equals: 10 @ 20.
	self assert: d privEdgePoints second equals: 30 @ 40.