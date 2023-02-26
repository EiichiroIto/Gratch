test
testComputeNodes

	| app p w t v b |
	app := self newApplication.
	app installNewProject: app createProject.
	p := app project.
	w := app grWorld.
	w createNodes: 3.
	v := w nodes addVariable: 'a'.
	w
		var: v
		breed: GrBreedId nodesBreedNo
		at: 1
		put: 30.
	w
		var: v
		breed: GrBreedId nodesBreedNo
		at: 2
		put: 40.
	w
		var: v
		breed: GrBreedId nodesBreedNo
		at: 3
		put: 20.
	b := self newGenerator.
	b script: p graphScript.
	b compute: (self choice: 'sum') nodes: (self choice: 'a').
	t := self newThread: w.
	t forBreedNo: GrBreedId graphBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 90