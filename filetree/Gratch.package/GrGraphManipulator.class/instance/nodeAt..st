private
nodeAt: aPoint
	| p |
	p := grDisplay worldPointToGraph: aPoint.
	^ grWorld
		nearestNodeAt: p
		within: self distanceThreshold * grDisplay zoom