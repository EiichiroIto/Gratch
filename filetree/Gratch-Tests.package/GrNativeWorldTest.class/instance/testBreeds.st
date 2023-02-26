test
testBreeds
	| w |
	w := self newWorld.
	self assert: w breeds isArray.
	self assert: (w breeds at: GrBreedId graphBreedNo) class equals: GrGraph.
	self assert: (w breeds at: GrBreedId nodesBreedNo) class equals: GrNodes.
	self assert: (w breeds at: GrBreedId edgesBreedNo) class equals: GrEdges.