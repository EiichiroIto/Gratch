test
testIsConnectedFromTo
	| w |
	w := self newWorld.
	self deny: (w isConnectedFrom: 1 to: 2).
	self deny: (w isConnectedFrom: 1 to: 3).
	self deny: (w isConnectedFrom: 2 to: 3).
	w n1At: 1 put: 1.
	w n2At: 1 put: 2.
	w n1At: 2 put: 1.
	w n2At: 2 put: 3.
	w n1At: 3 put: 2.
	w n2At: 3 put: 3.
	self assert: (w isConnectedFrom: 1 to: 2).
	self assert: (w isConnectedFrom: 1 to: 3).
	self assert: (w isConnectedFrom: 2 to: 3).