test
testCreateEdgeFromTo
	| e |
	e := self newThread.
	self assert: e stack size equals: 0.
	e push: 2.
	e push: 3.
	self deny: (e privGrWorld isConnectedFrom: 2 to: 3).
	e createEdgeFromTo.
	self assert: e stack size equals: 0.
	self assert: (e privGrWorld isConnectedFrom: 2 to: 3).