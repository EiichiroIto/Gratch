api
addBreed: aBreed
	| bno |
	bno := aBreed breedNo.
	breeds size < bno
		ifTrue: [ breeds := breeds forceTo: bno paddingWith: nil ].
	(breeds at: bno) ifNotNil: [ self error ].
	breeds at: bno put: aBreed.
	bno = GrBreedId graphBreedNo
		ifTrue: [ aBreed grWorld: self ]