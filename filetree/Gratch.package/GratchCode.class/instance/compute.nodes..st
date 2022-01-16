sensing ops
compute: cmd nodes: var
	| m v c |
	m := script project nodes.
	v := var choice.
	v isEmpty
		ifTrue: [ ^ 0 ].
	c := self statisticsNoOf: cmd choice.
	c = 0
		ifTrue: [ ^ 0 ].
	^ generator
		compute: c
		var: (m varId varNoFor: v)
		breed: GrBreedId nodesBreedNo