sensing ops
compute: cmd nodes: var

	| v c |
	v := var choice.
	v isEmpty ifTrue: [ ^ 0 ].
	c := self statisticsNoOf: cmd choice.
	c = 0 ifTrue: [ ^ 0 ].
	^ self
		  compute: c
		  var: (script project nodesScript varNoFor: v)
		  breed: GrBreedId nodesBreedNo