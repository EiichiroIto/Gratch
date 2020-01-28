variable ops
setEdge: id var: var to: aNumber
	| m v |
	m := targetMorph project edges.
	v := var choice.
	bcGenerator
		setVar: (m varId varNoFor: v)
		breedNo: GrBreedId edgesBreedNo
		at: [ id argString: parser ]
		put: [ aNumber argString: parser ]