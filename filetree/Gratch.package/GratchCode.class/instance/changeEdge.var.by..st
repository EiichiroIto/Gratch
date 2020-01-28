variable ops
changeEdge: id var: var by: aNumber
	| m v |
	m := targetMorph project edges.
	v := var choice.
	bcGenerator
		changeVar: (m varId varNoFor: v)
		breedNo: GrBreedId edgesBreedNo
		at: [ id argString: parser ]
		by: [ aNumber argString: parser ]