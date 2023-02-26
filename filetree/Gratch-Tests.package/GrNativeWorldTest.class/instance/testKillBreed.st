test
testKillBreed
	| w nodes edges |
	w := self newWorld.
	nodes := w createNodes: 3.
	self assert: (w aliveBreed: GrBreedId nodesBreedNo at: nodes first).
	self assert: (w aliveBreed: GrBreedId nodesBreedNo at: nodes second).
	self assert: (w aliveBreed: GrBreedId nodesBreedNo at: nodes third).
	edges := w createEdges: 3.
	w n1At: edges first put: 1.
	w n2At: edges first put: 2.
	w n1At: edges second put: 1.
	w n2At: edges second put: 3.
	w n1At: edges third put: 2.
	w n2At: edges third put: 3.
	w kill: nodes first breed: GrBreedId nodesBreedNo.
	self deny: (w aliveBreed: GrBreedId nodesBreedNo at: nodes first).
	self assert: (w aliveBreed: GrBreedId nodesBreedNo at: nodes second).
	self assert: (w aliveBreed: GrBreedId nodesBreedNo at: nodes third).
	self deny: (w aliveBreed: GrBreedId edgesBreedNo at: edges first).
	self deny: (w aliveBreed: GrBreedId edgesBreedNo at: edges second).
	self assert: (w aliveBreed: GrBreedId edgesBreedNo at: edges third).
	w kill: edges third breed: GrBreedId edgesBreedNo.
	self deny: (w aliveBreed: GrBreedId edgesBreedNo at: edges first).
	self deny: (w aliveBreed: GrBreedId edgesBreedNo at: edges second).
	self deny: (w aliveBreed: GrBreedId edgesBreedNo at: edges third)