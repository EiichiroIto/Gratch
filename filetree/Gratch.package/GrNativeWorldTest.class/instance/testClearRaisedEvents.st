test
testClearRaisedEvents
	| w |
	w := self newWorld.
	self assert: w privRaisedEvents isEmpty.
	w raiseEvent: #a.
	self assert: w privRaisedEvents notEmpty.
	w clearRaisedEvents.
	self assert: w privRaisedEvents isEmpty.