variable ops
changeEdge: id var: var by: aNumber

	| v |
	v := var choice.
	self
		changeVar: (script project edgesScript varNoFor: v)
		breedNo: GrBreedId edgesBreedNo
		at: [ id argString: parser ]
		by: [ aNumber argString: parser ]