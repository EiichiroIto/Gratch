test
testAddNodeAt
	| m w d |
	m := self newManipulator.
	w := m grWorld.
	d := m grDisplay.
	self assert: (w countAliveOf: GrBreedId nodesBreedNo) equals: 0.
	m addNodeAt: d bounds center.
	self assert: (w countAliveOf: GrBreedId nodesBreedNo) equals: 1.
	self assert: (w pointAt: 1) equals: 0 @ 0.