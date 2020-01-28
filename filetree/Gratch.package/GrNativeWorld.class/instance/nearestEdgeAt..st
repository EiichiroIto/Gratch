accessing edges
nearestEdgeAt: aPoint
	| min n dist p |
	min := nil.
	n := 0.
	self edges
		withLivingOnesDo: [ :each :nodes | 
			| n1 n2 p1 p2 |
			n1 := self n1At: each.
			n2 := self n2At: each.
			p1 := self pointAt: n1.
			p2 := self pointAt: n2.
			p := aPoint nearestPointOnLineFrom: p1 to: p2.
			dist := (aPoint - p) r.
			(min isNil or: [ min > dist ])
				ifTrue: [ min := dist.
					n := each ] ].
	^ n