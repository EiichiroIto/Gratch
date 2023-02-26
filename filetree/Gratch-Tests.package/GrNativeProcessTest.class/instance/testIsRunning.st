test
testIsRunning

	| p |
	p := self newProcess.
	p transition: #idle.
	self assert: p isRunning not.
	p transition: #loop.
	self assert: p isRunning.
	p transition: #setup