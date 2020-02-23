test
testZoomLevels
	| d |
	d := self newDisplay.
	self assert: d zoomLevels isArray.
	self assert: d zoomLevels notEmpty.