test
testDragGraphTo
	| m d p1 p2 |
	m := self newManipulator.
	d := m grDisplay.
	p1 := d graphPointToWorld: 10 @ 20.
	p2 := d graphPointToWorld: 30 @ 40.
	m privGraphCenter: 0 @ 0.
	m privStartPoint: p1.
	m dragGraphTo: p2.
	self assert: d graphCenter equals: -20 @ 20.