test
testStop

	| p |
	p := self newProcess.
	self assert: p transition equals: #idle.
	self assert: p runningEvents isEmpty