test
testNumberOfEdges

	| w b t |
	w := self newWorld.
	w createNodes: 4.
	w createEdgeFrom: 1 to: 2.
	w createEdgeFrom: 1 to: 3.
	w createEdgeFrom: 2 to: 3.
	w createEdgeFrom: 2 to: 4.
	w createEdgeFrom: 3 to: 4.
	b := self newGenerator.
	b numberOfEdges.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 5