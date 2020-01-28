test
testKill
	| w e s |
	w := self newWorld.
	w createNodes: 2.
	e := self newThread: w.
	e forBreedNo: GrBreedId nodesBreedNo index: 1.
	e codes: #(1 2 3 4).
	s := e stack size.
	self assert: (w alive: GrBreedId nodesBreedNo at: 1).
	e push: GrBreedId nodesBreedNo.
	e push: 1.
	e kill.
	self assert: e stack size equals: s.
	self assert: (w alive: GrBreedId nodesBreedNo at: 1) not.
	self deny: e isRunning.