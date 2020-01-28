test
testGraphRectangle
	| w rect |
	w := self newWorld.
	w createNodes: 4.
	w pointAt: 1 put: 1 @ 0.
	w pointAt: 2 put: 0 @ 1.
	w pointAt: 3 put: 2 @ 0.
	w pointAt: 4 put: 0 @ 4.
	rect := w graphRectangle.
	self assert: rect topLeft equals: 0 @ 0.
	self assert: rect bottomRight equals: 2 @ 4.