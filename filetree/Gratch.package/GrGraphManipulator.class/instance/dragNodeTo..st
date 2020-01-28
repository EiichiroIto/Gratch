private
dragNodeTo: aPoint
	| p |
	node ifNil: [ ^ self ].
	p := grDisplay worldPointToGraph: aPoint.
	grWorld pointAt: node put: p.
	grDisplay changed