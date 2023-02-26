test
testStep

	| p |
	p := self newProcess.
	p transition: #idle.
	p step