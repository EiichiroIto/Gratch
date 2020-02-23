test
testBreedsOf
	| w |
	w := self newWorld.
	self assert: (w breedOf: GrBreedId edgesBreedNo) class equals: GrEdges.
	self assert: (w breedOf: GrBreedId nodesBreedNo) class equals: GrNodes.