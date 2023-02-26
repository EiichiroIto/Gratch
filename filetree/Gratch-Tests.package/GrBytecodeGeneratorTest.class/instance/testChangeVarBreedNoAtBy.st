test
testChangeVarBreedNoAtBy

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
	b changeVar: (breed varNoFor: 'a') breedNo: GrBreedId nodesBreedNo at: 1 by: 10.
	b changeVar: (breed varNoFor: 'a') breedNo: GrBreedId nodesBreedNo at: 2 by: 20.
	t := self newThread: w.
	t forBreedNo: GrBreedId edgesBreedNo index: 1.
	t codes: b code.
	t execute: 1.
	self
		assert: (w var: vid breed: GrBreedId nodesBreedNo at: 1)
		equals: 15.
	self
		assert: (w var: vid breed: GrBreedId nodesBreedNo at: 2)
		equals: 20