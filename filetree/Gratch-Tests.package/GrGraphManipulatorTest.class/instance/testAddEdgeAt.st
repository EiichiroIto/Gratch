test
testAddEdgeAt
	| m w d p |
	m := self newManipulator.
	w := m grWorld.
	w createNodes: 2.
	w pointAt: 1 put: 1 @ 2.
	w pointAt: 2 put: 30 @ 40.
	d := m grDisplay.
	p := d graphPointToWorld: 30 @ 40.
	m privNode: 1.
	self assert: (w countAliveOf: GrBreedId edgesBreedNo) equals: 0.
	m addEdgeAt: p.
	self assert: (w countAliveOf: GrBreedId edgesBreedNo) equals: 1.
	self assert: (w n1At: 1) equals: 1.
	self assert: (w n2At: 1) equals: 2.