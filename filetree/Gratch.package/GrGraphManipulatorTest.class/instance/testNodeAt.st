test
testNodeAt
	| m w n d |
	m := self newManipulator.
	w := m grWorld.
	d := m grDisplay.
	w createNodes: 2.
	w pointAt: 1 put: 5 @ 5.
	w pointAt: 2 put: 15 @ 15.
	n := m nodeAt: d bounds center.
	self assert: n equals: 1.
	n := m nodeAt: (d graphPointToWorld: 15 @ 15).
	self assert: n equals: 2.
	n := m nodeAt: (d graphPointToWorld: 30 @ 30).
	self assert: n equals: 0