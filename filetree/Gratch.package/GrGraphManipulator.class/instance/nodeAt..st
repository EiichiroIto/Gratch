private
nodeAt: aPoint
	| p n |
	p := grDisplay worldPointToGraph: aPoint.
	n := grWorld nearestNodeAt: p except: 0.
	n = 0
		ifTrue: [ ^ n ].
	p := grWorld pointAt: n.
	p := grDisplay graphPointToWorld: p.
	^ (aPoint - p) r > self distanceThreshold
		ifTrue: [ 0 ]
		ifFalse: [ n ]