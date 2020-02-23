test
testClearAll
	| g |
	g := self newGenerator.
	g clearAll.
	self
		assertCollection: g code
		equals:
			{#pushShort.
			GrBreedId nodesBreedNo.
			0.
			#clearBreed.
			#pushShort.
			GrBreedId edgesBreedNo.
			0.
			#clearBreed.
			#stop}