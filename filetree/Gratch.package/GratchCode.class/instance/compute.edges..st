sensing ops
compute: cmd edges: var
	| m v c |
	m := script project edges.
	v := var choice.
	v isEmpty
		ifTrue: [ ^ 0 ].
	c := self statisticsNoOf: cmd choice.
	c = 0
		ifTrue: [ ^ 0 ].
	^ generator
		compute: c
		var: (m varId varNoFor: v)
		breed: GrBreedId edgesBreedNo