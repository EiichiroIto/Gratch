graph actions
edgeClickedAt: aPoint
	| w e |
	w := self grWorld.
	e := w nearestEdgeAt: aPoint within: 10 * self display zoom.
	e = 0
		ifTrue: [ ^ self ].
	self inspectAt: e.
	self display changed