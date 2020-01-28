test
testBreedNo
	| o |
	o := self newGraph.
	self assert: o breedNo equals: GrBreedId graphBreedNo.
	o breedNo: 123.
	self assert: o breedNo equals: GrBreedId graphBreedNo.