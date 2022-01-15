accessing
graphRect: anObject
	| w h |
	w := anObject width max: 0.1.
	h := anObject height max: 0.1.
	graphRect := Rectangle center: anObject center extent: w @ h