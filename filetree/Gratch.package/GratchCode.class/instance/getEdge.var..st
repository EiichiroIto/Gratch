color ops
getEdge: id var: var
	| m v |
	m := script project edges.
	v := var choice.
	^ generator
		getVar: [ m varId varNoFor: v ]
		breedNo: GrBreedId edgesBreedNo
		at: [ id argString: parser ]