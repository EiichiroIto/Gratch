test
testZoom
	| d |
	d := self newDisplay.
	self assert: d zoom equals: 1.
	d zoomIndex: d zoomIndex + 1.
	self assert: d zoom equals: 2.