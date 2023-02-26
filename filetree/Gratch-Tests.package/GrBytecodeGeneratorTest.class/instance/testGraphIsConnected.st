test
testGraphIsConnected

	| app p w t b |
	b := self newGenerator.
	b graphIsConnected.

	app := self newApplication.
	app installNewProject: app createProject.
	p := app project.
	w := app grWorld.
	w createNodes: 4.
	w createEdgeFrom: 1 to: 2.
	w createEdgeFrom: 1 to: 4.
	w createEdgeFrom: 3 to: 1.
	w createEdgeFrom: 2 to: 3.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 1.

	app := self newApplication.
	app installNewProject: app createProject.
	p := app project.
	w := app grWorld.
	w createNodes: 5.
	w createEdgeFrom: 1 to: 2.
	w createEdgeFrom: 1 to: 3.
	w createEdgeFrom: 4 to: 5.

	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 0