test
testDragNodeTo
	| m w d p |
	m := self newManipulator.
	w := m grWorld.
	d := m grDisplay.
	m privNode: 1.
	p := d graphPointToWorld: 10 @ 20.
	m dragNodeTo: p.
	self assert: (w pointAt: 1) equals: 10 @ 20.