sensing ops
edgeWithMin: var
	| m v |
	m := targetMorph project edges.
	v := var choice.
	^ bcGenerator
		minVar: (m varId varNoFor: v)
		breed: GrBreedId edgesBreedNo