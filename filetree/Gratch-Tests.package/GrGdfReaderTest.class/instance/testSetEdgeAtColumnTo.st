test
testSetEdgeAtColumnTo
	| r w |
	r := self newReader.
	w := self newWorld.
	r privGrWorld: w.
	r privNodes at: 1 put: 1.
	r privNodes at: 2 put: 2.
	r setEdge: 1 atColumn: 'node1' to: 1.
	r setEdge: 1 atColumn: 'node2' to: 2.
	self assert: (w n1At: 1) equals: 1.
	self assert: (w n2At: 1) equals: 2