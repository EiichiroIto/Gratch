accessing edges
isConnectedFrom: n1 to: n2
	(n1 = 0 or: [ n2 = 0 ])
		ifTrue: [ ^ false ].
	self edges
		withElementsDo: [ :each :edges | 
			(edges isConnected: each from: n1 to: n2)
				ifTrue: [ ^ true ] ].
	^ false