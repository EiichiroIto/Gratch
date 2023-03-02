test
testId
	| e |
	e := self newThread.
	self assert: e id isNil.
	e id: 10.
	self assert: e id equals: 10.
	e id: 20.
	self assert: e id equals: 20.