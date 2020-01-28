accessing
pointsAndColorOfEdges: aCollection
	| nodes edges n1 n2 |
	nodes := self nodes.
	edges := self edges.
	^ aCollection
		collect: [ :each | 
			n1 := self n1At: each.
			n2 := self n2At: each.
			Array
				with: (nodes pointAt: n1)
				with: (nodes pointAt: n2)
				with: (edges colorAt: each) ]