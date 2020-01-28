color ops
getNode: id var: var
	| m v |
	m := targetMorph project nodes.
	v := var choice.
	^ bcGenerator
		getVar: [ m varId varNoFor: v ]
		breedNo: GrBreedId nodesBreedNo
		at: [ id argString: parser ]