accessing
pointAndColorOfNodes: aCollection
	| nodes |
	nodes := self nodes.
	^ aCollection
		collect: [ :each | 
			Array
				with: (nodes pointAt: each)
				with: (nodes colorAt: each) ]