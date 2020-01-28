variable ops
changeNode: id var: var by: aNumber
	| m v |
	m := targetMorph project nodes.
	v := var choice.
	bcGenerator
		changeVar: (m varId varNoFor: v)
		breedNo: GrBreedId nodesBreedNo
		at: [ id argString: parser ]
		by: [ aNumber argString: parser ]