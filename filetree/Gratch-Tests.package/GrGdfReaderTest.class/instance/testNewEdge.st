test
testNewEdge
	| r w ret |
	r := self newReader.
	w := self newWorld.
	r grWorld: w.
	ret := r newEdge.
	self assert: ret equals: 1.
	ret := r newEdge.
	self assert: ret equals: 1.
	w n1At: 1 put: 1.
	w n2At: 1 put: 2.
	ret := r newEdge.
	self assert: ret equals: 2