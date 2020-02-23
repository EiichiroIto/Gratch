variable ops
changeNode: id var: var by: aNumber
	| m v |
	m := script project nodes.
	v := var choice.
	generator
		changeVar: (m varId varNoFor: v)
		breedNo: GrBreedId nodesBreedNo
		at: [ id argString: parser ]
		by: [ aNumber argString: parser ]