private
setupEdgeCache
	| list |
	list := grWorld edgeIndexConnectedWithin: nodeCache keys.
	edgeCache := list
		collect: [ :each | 
			| n1 n2 |
			n1 := grWorld n1At: each.
			n2 := grWorld n2At: each.
			{(nodeCache at: n1) first center.
			(nodeCache at: n2) first center.
			(self edgeColorAt: each).
			(self edgeLabelsAt: each)} ]