test
testEdgeLabels
	| d |
	d := self newDisplay.
	self assert: d edgeLabels isEmpty.
	d edgeLabels: #(1 2 3).
	self assertCollection: d edgeLabels equals: #(1 2 3)