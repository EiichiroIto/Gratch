test
testZoomIn
	| m d |
	m := self newManipulator.
	d := m grDisplay.
	self assert: d zoomIndex equals: d defaultZoomIndex.
	m zoomIn.
	self assert: d zoomIndex equals: d defaultZoomIndex - 1