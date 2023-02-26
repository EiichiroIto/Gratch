test
testGetGraphVar

	| app w vid1 vid2 b t p r |
	app := self newApplication.
	app installNewProject: app createProject.
	p := app project.
	w := app grWorld.
	w createNodes: 3.
	w createEdgeFrom: 1 to: 2.
	w createEdgeFrom: 2 to: 3.
	vid1 := w graph addVariable: 'a'.
	vid2 := w graph addVariable: 'b'.
	w
		var: vid1
		breed: GrBreedId graphBreedNo
		at: 1
		put: 5.
	w
		var: vid2
		breed: GrBreedId graphBreedNo
		at: 1
		put: 8.

	b := self newGenerator.
	b script: p edgesScript.
	b getGraphVar: (self choice: 'a').
	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 1.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r equals: 5.

	b := self newGenerator.
	b script: p edgesScript.
	b getGraphVar: (self choice: 'b').
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r equals: 8