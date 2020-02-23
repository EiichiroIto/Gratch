test
testClearEdges
	| g |
	g := self newGenerator.
	g clearEdges.
	self
		assertCollection: g code
		equals:
			{#pushShort.
			GrBreedId edgesBreedNo.
			0.
			#clearBreed.
			#stop}