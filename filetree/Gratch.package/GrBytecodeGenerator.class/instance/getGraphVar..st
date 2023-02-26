variable ops
getGraphVar: var

	| v |
	v := var choice.
	v isEmpty ifTrue: [ self error ].
	^ self
		  getVar: (script project graphScript varNoFor: v)
		  breedNo: GrBreedId graphBreedNo
		  at: 1