variable ops
setEdge: id var: var to: aNumber
	| m v |
	m := script project edges.
	v := var choice.
	generator
		setVar: (m varId varNoFor: v)
		breedNo: GrBreedId edgesBreedNo
		at: [ id argString: parser ]
		put: [ aNumber argString: parser ]