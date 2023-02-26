test
testClearRaisedEvents
	| w |
	w := self newWorld.
	self assert: w raisedEvents isEmpty.
	w raiseEvent: #a.
	self assert: w raisedEvents notEmpty.
	w clearRaisedEvents.
	self assert: w raisedEvents isEmpty.