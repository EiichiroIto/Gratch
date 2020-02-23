test
testNewNode
	| r w ret |
	r := self newReader.
	w := self newWorld.
	r privGrWorld: w.
	self assert: (w countAliveOf: GrBreedId nodesBreedNo) equals: 0.
	ret := r newNode.
	self assert: ret equals: 1.
	ret := r newNode.
	self assert: ret equals: 2.
	self assert: (w countAliveOf: GrBreedId nodesBreedNo) equals: 2.