test
testAliveBreedAt

	| w list |
	w := self newWorld.
	list := w createNodes: 3.
	self assert: (w aliveBreed: GrBreedId nodesBreedNo at: list first).
	self assert: (w aliveBreed: GrBreedId nodesBreedNo at: list second).
	self assert: (w aliveBreed: GrBreedId nodesBreedNo at: list third).
	w kill: list first breed: GrBreedId nodesBreedNo.
	w kill: list third breed: GrBreedId nodesBreedNo.
	self deny: (w aliveBreed: GrBreedId nodesBreedNo at: list first).
	self assert: (w aliveBreed: GrBreedId nodesBreedNo at: list second).
	self deny: (w aliveBreed: GrBreedId nodesBreedNo at: list third)