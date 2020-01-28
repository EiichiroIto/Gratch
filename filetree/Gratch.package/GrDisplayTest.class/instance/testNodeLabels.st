test
testNodeLabels
	| d |
	d := self newDisplay.
	self assert: d nodeLabels isEmpty.
	d nodeLabels: #(1 2 3).
	self assertCollection: d nodeLabels equals: #(1 2 3)