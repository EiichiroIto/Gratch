test
testStepTime
	| d |
	d := self newDisplay.
	self assert: d stepTime equals: 1000.
	d stepTime: 500.
	self assert: d stepTime equals: 500.