test
testTransition

	| p |
	p := self newProcess.
	self assert: p transition equals: #idle.
	p transition: #abc.
	self assert: p transition equals: #abc