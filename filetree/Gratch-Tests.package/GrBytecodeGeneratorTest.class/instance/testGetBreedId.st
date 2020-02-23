test
testGetBreedId
	| g |
	g := self newGenerator.
	g getBreedId.
	self
		assertCollection: g code
		equals:
			{#getBreedId.
			#stop}