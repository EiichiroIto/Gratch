sensing ops
edgeOfMax: var
	| m v |
	m := targetMorph project edges.
	v := var choice.
	^ bcGenerator
		maxVar: (m varId varNoFor: v)
		breed: GrBreedId edgesBreedNo