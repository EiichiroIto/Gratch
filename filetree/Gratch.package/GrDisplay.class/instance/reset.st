accessing
reset
	self color: self theme backgroundColor.
	self graphRectangle: self defaultGraphRectangle.
	self zoomIndex: self defaultZoomIndex.
	self edgeLabels: #().
	self nodeLabels: #().
	self stepTime: 1000