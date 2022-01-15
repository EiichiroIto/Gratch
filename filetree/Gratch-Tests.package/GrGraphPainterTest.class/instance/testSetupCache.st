test
testSetupCache
	| p w |
	w := self newWorld.
	w createNodes: 3.
	w pointAt: 1 put: 100 @ 100.
	w pointAt: 2 put: 50 @ 50.
	w pointAt: 3 put: -100 @ -100.
	w createEdgeFrom: 1 to: 2.
	w createEdgeFrom: 2 to: 3.
	p := self newPainter: w.
	p graphRect: (-110 @ -110 corner: 110 @ 110).
	p screenRect: (0 @ 0 corner: 100 @ 100).
	p setupCache: w allNodes.
	self assert: p nodeCache size equals: 3.
	self assert: p edgeCache size equals: 2