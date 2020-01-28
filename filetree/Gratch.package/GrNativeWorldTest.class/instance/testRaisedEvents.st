test
testRaisedEvents
	| w |
	w := self newWorld.
	self assert: w raisedEvents isEmpty.
	w raiseEvent: #a.
	self assertCollection: w raisedEvents asArray equals: #(a).
	w raiseEvent: #b.
	self assert: w raisedEvents size equals: 2.
	self assert: (w raisedEvents includes: #a).
	self assert: (w raisedEvents includes: #b).