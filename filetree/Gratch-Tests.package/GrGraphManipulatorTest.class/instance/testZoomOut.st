test
testZoomOut
	| m d |
	m := self newManipulator.
	d := m grDisplay.
	self assert: d zoomIndex equals: d defaultZoomIndex.
	m zoomOut.
	self assert: d zoomIndex equals: d defaultZoomIndex + 1