test
testBreedOf
	| w |
	w := self newWorld.
	self assert: (w breedOf: GrBreedId graphBreedNo) class equals: GrGraph.
	self assert: (w breedOf: GrBreedId nodesBreedNo) class equals: GrNodes.
	self assert: (w breedOf: GrBreedId edgesBreedNo) class equals: GrEdges.