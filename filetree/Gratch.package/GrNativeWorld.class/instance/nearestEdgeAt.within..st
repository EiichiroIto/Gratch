accessing edges
nearestEdgeAt: aPoint within: aNumber
	| e n1 n2 p1 p2 p |
	e := self nearestEdgeAt: aPoint.
	e = 0
		ifTrue: [ ^ 0 ].
	n1 := self n1At: e.
	n2 := self n2At: e.
	p1 := self pointAt: n1.
	p2 := self pointAt: n2.
	p := aPoint nearestPointOnLineFrom: p1 to: p2.
	(aPoint - p) r > aNumber
		ifTrue: [ ^ 0 ].
	^ e