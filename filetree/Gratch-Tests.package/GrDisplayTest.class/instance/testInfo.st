test
testInfo
	| d |
	d := self newDisplay.
	self assert: d info isNil.
	d info: 'abc'.
	self assert: d info equals: 'abc'