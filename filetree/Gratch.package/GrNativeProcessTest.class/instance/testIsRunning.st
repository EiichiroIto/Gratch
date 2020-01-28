test
testIsRunning
	| p |
	p := self newWorld newProcess program: GrProgram new.
	p privTransition: #idle.
	self assert: p isRunning not.
	p privTransition: #loop.
	self assert: p isRunning.
	p privTransition: #setup.