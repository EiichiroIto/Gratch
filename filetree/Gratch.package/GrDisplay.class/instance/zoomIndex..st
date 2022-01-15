accessing
zoomIndex: anInteger
	zoomIndex := anInteger min: self zoomLevels size max: 1.
	zoom := self zoomLevels at: zoomIndex.
	painter graphRect: self graphRectangle.
	self changed