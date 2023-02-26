test
testSetNodeVarTo

	| app w vid b t p |
	app := self newApplication.
	app installNewProject: app createProject.
	p := app project.
	w := app grWorld.
	w createNodes: 2.
	w createEdgeFrom: 1 to: 2.
	vid := w nodes addVariable: 'a'.
	w
		var: vid
		breed: GrBreedId nodesBreedNo
		at: 1
		put: 5.

	b := self newGenerator.
	b script: p nodesScript.
	b setNode: (self literalValue: 1) var: (self choice: 'a') to: (self literalValue: 10).
	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 1.
	t codes: b code.
	t execute: 1.
	self
		assert: (w var: vid breed: GrBreedId nodesBreedNo at: 1)
		equals: 10.
	self
		assert: (w var: vid breed: GrBreedId nodesBreedNo at: 2)
		equals: 0.

	b := self newGenerator.
	b script: p nodesScript.
	b setNode: (self literalValue: 2) var: (self choice: 'a') to: (self literalValue: -1).
	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 2.
	t codes: b code.
	t execute: 1.
	self
		assert: (w var: vid breed: GrBreedId nodesBreedNo at: 1)
		equals: 10.
	self
		assert: (w var: vid breed: GrBreedId nodesBreedNo at: 2)
		equals: -1