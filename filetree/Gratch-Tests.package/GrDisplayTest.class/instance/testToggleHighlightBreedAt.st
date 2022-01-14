test
testToggleHighlightBreedAt
	| d r |
	d := self newDisplay.
	r := d toggleHighlightBreed: GrBreedId nodesBreedNo at: 1.
	self assert: r equals: 1.
	r := d toggleHighlightBreed: GrBreedId nodesBreedNo at: 2.
	self assert: r equals: 2.
	r := d toggleHighlightBreed: GrBreedId nodesBreedNo at: 2.
	self assert: r isNil