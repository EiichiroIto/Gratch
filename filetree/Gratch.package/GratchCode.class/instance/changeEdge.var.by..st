variable ops
changeEdge: id var: var by: aNumber
	| m v |
	m := script project edges.
	v := var choice.
	generator
		changeVar: (m varId varNoFor: v)
		breedNo: GrBreedId edgesBreedNo
		at: [ id argString: parser ]
		by: [ aNumber argString: parser ]