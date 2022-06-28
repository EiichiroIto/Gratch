graph actions
nodeClickedAt: aPoint
	| w n |
	w := self grWorld.
	n := w nearestNodeAt: aPoint within: 10 * self display zoom.
	n > 0
		ifTrue: [ n := stageFrame toggleHighlightBreed: GrBreedId nodesBreedNo at: n.
			^ self showInspector: n ].
	w pointAt: (w createNodes: 1) first put: aPoint.
	application updateStatusForced: true.
	self updateDisplay