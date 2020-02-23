test
testAliveAt
	| w list |
	w := self newWorld.
	list := w createNodes: 3.
	self assert: (w alive: GrBreedId nodesBreedNo at: list first).
	self assert: (w alive: GrBreedId nodesBreedNo at: list second).
	self assert: (w alive: GrBreedId nodesBreedNo at: list third).
	w kill: list first breed: GrBreedId nodesBreedNo.
	w kill: list third breed: GrBreedId nodesBreedNo.
	self deny: (w alive: GrBreedId nodesBreedNo at: list first).
	self assert: (w alive: GrBreedId nodesBreedNo at: list second).
	self deny: (w alive: GrBreedId nodesBreedNo at: list third)