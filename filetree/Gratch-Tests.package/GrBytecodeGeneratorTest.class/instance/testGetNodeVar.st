test
testGetNodeVar

	| app w vid b t p r |
	app := self newApplication.
	app installNewProject: app createProject.
	p := app project.
	w := app grWorld.
	w createNodes: 3.
	w createEdgeFrom: 1 to: 2.
	w createEdgeFrom: 2 to: 3.
	vid := w nodes addVariable: 'a'.
	w
		var: vid
		breed: GrBreedId nodesBreedNo
		at: 1
		put: 5.
	w
		var: vid
		breed: GrBreedId nodesBreedNo
		at: 2
		put: 8.

	b := self newGenerator.
	b script: p edgesScript.
	b getNode: (self literalValue: 1) var: (self choice: 'a').
	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 1.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r equals: 5.

	b := self newGenerator.
	b script: p edgesScript.
	b getNode: (self literalValue: 2) var: (self choice: 'a').
	t := self newThread: w.
	t forBreedNo: GrBreedId graphBreedNo index: 1.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r equals: 8