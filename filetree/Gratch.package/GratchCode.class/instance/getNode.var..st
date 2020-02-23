color ops
getNode: id var: var
	| m v |
	m := script project nodes.
	v := var choice.
	^ generator
		getVar: [ m varId varNoFor: v ]
		breedNo: GrBreedId nodesBreedNo
		at: [ id argString: parser ]