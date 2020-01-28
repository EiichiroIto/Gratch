test
testSetupDragNodeAt
	| m w d |
	m := self newManipulator.
	w := m grWorld.
	d := m grDisplay.
	w createNodes: 2.
	w pointAt: 1 put: 5 @ 5.
	w pointAt: 2 put: 15 @ 15.
	m setupDragNodeAt: (d graphPointToWorld: 5 @ 5).
	self assert: m privNode equals: 1.
	m privNode: nil.
	m setupDragNodeAt: (d graphPointToWorld: 15 @ 15).
	self assert: m privNode equals: 2.
	m privNode: nil.
	m setupDragNodeAt: (d graphPointToWorld: 30 @ 30).
	self assert: m privNode isNil