test
testConnectedEdgeFromTo
	| w |
	w := self newWorld.
	self assert: (w connectedEdgeFrom: 1 to: 2) equals: 0.
	self assert: (w connectedEdgeFrom: 1 to: 3) equals: 0.
	self assert: (w connectedEdgeFrom: 2 to: 3) equals: 0.
	w n1At: 1 put: 1.
	w n2At: 1 put: 2.
	w n1At: 2 put: 1.
	w n2At: 2 put: 3.
	w n1At: 3 put: 2.
	w n2At: 3 put: 3.
	self assert: (w connectedEdgeFrom: 1 to: 2) equals: 1.
	self assert: (w connectedEdgeFrom: 1 to: 3) equals: 2.
	self assert: (w connectedEdgeFrom: 2 to: 3) equals: 3.