sensing ops
edgeWithMin: var
	| m v |
	m := script project edges.
	v := var choice.
	^ generator
		minVar: (m varId varNoFor: v)
		breed: GrBreedId edgesBreedNo