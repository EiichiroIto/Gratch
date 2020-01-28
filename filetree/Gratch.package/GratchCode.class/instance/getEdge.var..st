color ops
getEdge: id var: var
	| m v |
	m := targetMorph project edges.
	v := var choice.
	^ bcGenerator
		getVar: [ m varId varNoFor: v ]
		breedNo: GrBreedId edgesBreedNo
		at: [ id argString: parser ]