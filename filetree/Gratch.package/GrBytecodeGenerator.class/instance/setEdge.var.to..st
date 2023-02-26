variable ops
setEdge: id var: var to: aNumber

	self
		setVar: (script project edgesScript varNoFor: var choice)
		breedNo: GrBreedId edgesBreedNo
		at: [ id argString: parser ]
		put: [ aNumber argString: parser ]