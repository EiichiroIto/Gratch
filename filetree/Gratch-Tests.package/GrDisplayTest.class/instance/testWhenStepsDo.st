test
testWhenStepsDo
	| d |
	d := self newDisplay.
	self assert: d privStepBlock isNil.
	d whenStepsDo: 123.
	self assert: d privStepBlock equals: 123