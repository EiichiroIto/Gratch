private
nodeAt: aPoint
	| p |
	p := grDisplay graphPointFrom: aPoint.
	^ grWorld
		nearestNodeAt: p
		within: self distanceThreshold * grDisplay zoom