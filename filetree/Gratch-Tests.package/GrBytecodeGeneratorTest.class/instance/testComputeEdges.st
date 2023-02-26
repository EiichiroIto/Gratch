test
testComputeEdges

	| app p w t v b |
	app := self newApplication.
	app installNewProject: app createProject.
	p := app project.
	w := app grWorld.
	w createNodes: 3.
	w createEdgeFrom: 1 to: 2.
	w createEdgeFrom: 2 to: 3.
	w createEdgeFrom: 3 to: 1.
	v := w edges addVariable: 'a'.
	w
		var: v
		breed: GrBreedId edgesBreedNo
		at: 1
		put: 30.
	w
		var: v
		breed: GrBreedId edgesBreedNo
		at: 2
		put: 40.
	w
		var: v
		breed: GrBreedId edgesBreedNo
		at: 3
		put: 20.
	b := self newGenerator.
	b script: p graphScript.
	b compute: (self choice: 'sum') edges: (self choice: 'a').
	t := self newThread: w.
	t forBreedNo: GrBreedId graphBreedNo index: 1.
	t codes: b code.
	self assert: (t evaluate: 1) equals: 90