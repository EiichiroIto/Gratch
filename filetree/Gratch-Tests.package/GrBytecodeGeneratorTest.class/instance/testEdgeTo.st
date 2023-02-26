test
testEdgeTo

	| app p w t b |
	app := self newApplication.
	app installNewProject: app createProject.
	p := app project.
	w := app grWorld.
	w createNodes: 4.
	w createEdgeFrom: 1 to: 2.
	w createEdgeFrom: 1 to: 4.
	w createEdgeFrom: 3 to: 1.
	w createEdgeFrom: 2 to: 3.
	b := self newGenerator.
	b edgeTo: (self literalValue: 1).

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 0.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 2.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 1.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 3.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 3.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 4.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 2