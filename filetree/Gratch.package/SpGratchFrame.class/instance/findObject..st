inspecting
findObject: anInteger

	| ret id bno |
	bno := self currentBreedNo.
	bno = GrBreedId graphBreedNo ifTrue: [ ^ self ].
	ret := application
		       request: 'Enter number' localized
		       initialAnswer: anInteger asString.
	ret ifNil: [ ^ self ].
	id := ret asNumberNoError.
	(self grWorld aliveBreed: bno at: id) ifFalse: [ 
		^ self clearInspector ].
	inspectorTarget := Array with: bno with: id.
	stageFrame toggleHighlightBreed: bno at: id.
	self updateInspector