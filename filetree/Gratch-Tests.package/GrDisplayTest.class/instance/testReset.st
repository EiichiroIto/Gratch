test
testReset
	| d |
	d := self newDisplay.
	self assert: d color isColor.
	self assert: d graphRectangle equals: d defaultGraphRectangle.
	self assert: d zoomIndex equals: d defaultZoomIndex.
	self assert: d edgeLabels isEmpty.
	self assert: d nodeLabels isEmpty.
	self assert: d stepTime equals: 1000