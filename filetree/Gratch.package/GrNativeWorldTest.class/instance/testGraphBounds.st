test
testGraphBounds
	| w r |
	w := self newWorld.
	r := w graphBounds.
	self assert: r isRectangle.
	self assert: r width > 0.
	self assert: r height > 0.