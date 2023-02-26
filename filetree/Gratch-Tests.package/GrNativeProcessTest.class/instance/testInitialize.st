test
testInitialize

	| p |
	p := self newProcess.
	self assert: p transition equals: #idle