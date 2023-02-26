test
testSetVarBreedNoAtPut

	| app w vid b t p breed |
	app := self newApplication.
	app installNewProject: app createProject.
	p := app project.
	w := app grWorld.
	w createNodes: 2.
	w createEdgeFrom: 1 to: 2.
	breed := w nodes.
	vid := breed addVariable: 'a'.
	w
		var: vid
		breed: GrBreedId nodesBreedNo
		at: 1
		put: 5.

	b := self newGenerator.
	b script: p nodesScript.
	b setVar: (breed varNoFor: 'a') breedNo: GrBreedId nodesBreedNo at: 1 put: 10.
	b setVar: (breed varNoFor: 'a') breedNo: GrBreedId nodesBreedNo at: 2 put: 20.
	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 1.
	t codes: b code.
	t execute: 1.
	self
		assert: (w var: vid breed: GrBreedId nodesBreedNo at: 1)
		equals: 10.
	self
		assert: (w var: vid breed: GrBreedId nodesBreedNo at: 2)
		equals: 20