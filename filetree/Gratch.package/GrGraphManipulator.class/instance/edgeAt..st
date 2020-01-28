private
edgeAt: aPoint
	| p e n1 n2 p1 p2 |
	p := grDisplay worldPointToGraph: aPoint.
	e := grWorld nearestEdgeAt: p.
	e = 0
		ifTrue: [ ^ 0 ].
	n1 := grWorld n1At: e.
	n2 := grWorld n2At: e.
	p1 := grWorld pointAt: n1.
	p2 := grWorld pointAt: n2.
	p := p nearestPointOnLineFrom: p1 to: p2.
	p := grDisplay graphPointToWorld: p.
	^ (aPoint - p) r > self distanceThreshold
		ifTrue: [ 0 ]
		ifFalse: [ e ]