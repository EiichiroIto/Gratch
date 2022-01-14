private
inspectAt: anInteger
	| ret |
	ret := stageFrame toggleHighlightBreed: self currentBreedNo at: anInteger.
	self updateInspector: ret