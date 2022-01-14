graph actions
edgeClickedAt: aPoint
	| w e |
	w := self grWorld.
	e := w nearestEdgeAt: aPoint within: 10 * self display zoom.
	e = 0
		ifTrue: [ ^ self ].
	e := stageFrame toggleHighlightBreed: GrBreedId edgesBreedNo at: e.
	self updateInspector: e.
	self display changed