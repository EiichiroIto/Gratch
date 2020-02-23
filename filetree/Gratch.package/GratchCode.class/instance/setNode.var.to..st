variable ops
setNode: id var: var to: aNumber
	| m v |
	m := script project nodes.
	v := var choice.
	generator
		setVar: (m varId varNoFor: v)
		breedNo: GrBreedId nodesBreedNo
		at: [ id argString: parser ]
		put: [ aNumber argString: parser ]