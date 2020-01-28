test
testInitialize
	| p |
	p := self newProcess.
	self assert: p privTransition equals: #idle.