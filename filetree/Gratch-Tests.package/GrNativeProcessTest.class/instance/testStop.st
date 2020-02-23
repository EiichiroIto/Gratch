test
testStop
	| p |
	p := self newProcess.
	self assert: p privTransition equals: #idle.
	self assert: p privRunningEvents isEmpty.