test
testAdjustZoom
	| d |
	d := self newDisplay.
	self assert: (d adjustZoom: 1) equals: 1.
	self assert: (d adjustZoom: 0.5) equals: 0.5.
	self assert: (d adjustZoom: 0.7) equals: 1.
	self assert: (d adjustZoom: 2) equals: 2.
	self assert: (d adjustZoom: 1.5) equals: 2.
	self assert: (d adjustZoom: 0) equals: d zoomLevels first.
	self assert: (d adjustZoom: 10000) equals: d zoomLevels last