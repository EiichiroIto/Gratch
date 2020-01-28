variable ops
setNode: id var: var to: aNumber
	| m v |
	m := targetMorph project nodes.
	v := var choice.
	bcGenerator
		setVar: (m varId varNoFor: v)
		breedNo: GrBreedId nodesBreedNo
		at: [ id argString: parser ]
		put: [ aNumber argString: parser ]