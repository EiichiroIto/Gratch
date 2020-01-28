accessing
zoomFit
	| rect w c |
	rect := grWorld graphRectangle.
	rect ifNil: [ ^ self ].
	w := (rect width max: rect height) + 10.
	(w closeTo: 0)
		ifTrue: [ self zoomIndex: self defaultZoomIndex ]
		ifFalse: [ zoom := w / self defaultGraphExtent x ].
	zoom := self adjustZoom: zoom.
	zoomIndex := self zoomLevels indexOf: zoom.
	c := rect center x @ rect center y negated.
	graphCenter := c.
	self changed