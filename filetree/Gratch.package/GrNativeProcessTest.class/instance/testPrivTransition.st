test
testPrivTransition
	| p |
	p := self newProcess.
	self assert: p privTransition equals: #idle.
	p privTransition: #abc.
	self assert: p privTransition equals: #abc.