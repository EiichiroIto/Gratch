test
testZoomIndex
	| d |
	d := self newDisplay.
	self assert: d zoomIndex equals: d defaultZoomIndex.
	d zoomIndex: 4.
	self assert: d zoomIndex equals: 4.
	d zoomIndex: 0.
	self assert: d zoomIndex equals: 1.
	d zoomIndex: 100.
	self assert: d zoomIndex equals: d zoomLevels size