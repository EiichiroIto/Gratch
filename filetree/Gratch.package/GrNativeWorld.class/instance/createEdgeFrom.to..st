accessing edges
createEdgeFrom: n1 to: n2
	| list |
	(n1 = 0 or: [ n2 = 0 ])
		ifTrue: [ ^ self ].
	(n1 = n2 and: [ self graph isLooped not ])
		ifTrue: [ ^ self ].
	(self isConnectedFrom: n1 to: n2)
		ifTrue: [ ^ self ].
	list := self createEdges: 1.
	list isEmpty
		ifTrue: [ ^ self ].
	self n1At: list first put: n1.
	self n2At: list first put: n2