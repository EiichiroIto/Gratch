test
testAddEdgeWith
	| r w |
	r := self newReader.
	w := self newWorld.
	r privGrWorld: w.
	r privNodes at: 'a' put: 1.
	r privNodes at: 'b' put: 2.
	r
		addEdgeWith:
			{{{'node1'} . 'a'}.
			{{'node2'} . 'b'}}.
	self assert: (w n1At: 1) equals: 1.
	self assert: (w n2At: 1) equals: 2