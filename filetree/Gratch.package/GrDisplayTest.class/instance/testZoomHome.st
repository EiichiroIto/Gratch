test
testZoomHome
	| d |
	d := self newDisplay.
	d zoomHome.
	self assert: d zoomIndex equals: d defaultZoomIndex.
	self assert: d graphRectangle equals: d defaultGraphRectangle