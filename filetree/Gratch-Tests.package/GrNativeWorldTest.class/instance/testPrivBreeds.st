test
testPrivBreeds
	| w |
	w := self newWorld.
	self assert: w privBreeds isArray.
	self assert: (w privBreeds at: GrBreedId graphBreedNo) class equals: GrGraph.
	self assert: (w privBreeds at: GrBreedId nodesBreedNo) class equals: GrNodes.
	self assert: (w privBreeds at: GrBreedId edgesBreedNo) class equals: GrEdges.