test
testClearNodes
	| g |
	g := self newGenerator.
	g clearNodes.
	self
		assertCollection: g code
		equals:
			{#pushShort.
			GrBreedId nodesBreedNo.
			0.
			#clearBreed.
			#stop}