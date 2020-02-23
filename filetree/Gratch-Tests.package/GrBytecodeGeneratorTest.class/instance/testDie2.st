test
testDie2
	| w b t |
	w := self newWorld.
	w createNodes: 3.
	w createEdges: 2.
	w n1At: 1 put: 1.
	w n2At: 1 put: 2.
	w n1At: 2 put: 3.
	w n2At: 2 put: 4.
	b := self newGenerator.
	b die.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	self assert: (w flag: GrNodesVarDef aliveFlagNo breed: GrBreedId nodesBreedNo at: 1).
	self assert: (w flag: GrNodesVarDef aliveFlagNo breed: GrBreedId nodesBreedNo at: 2).
	t codes: b code.
	t execute: 1.
	self deny: (w flag: GrNodesVarDef aliveFlagNo breed: GrBreedId nodesBreedNo at: 1).
	self assert: (w flag: GrNodesVarDef aliveFlagNo breed: GrBreedId nodesBreedNo at: 2).
	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 1.
	t codes: b code.
	t execute: 1.
	self deny: (w alive: GrBreedId edgesBreedNo at: 1).
	self assert: (w alive: GrBreedId edgesBreedNo at: 2)