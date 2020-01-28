test
testStep
	| p |
	p := self newProcess.
	p privTransition: #idle.
	p step.