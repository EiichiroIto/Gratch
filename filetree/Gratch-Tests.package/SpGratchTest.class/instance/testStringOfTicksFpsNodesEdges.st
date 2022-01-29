test
testStringOfTicksFpsNodesEdges
	| a r |
	a := self newApp.
	r := a stringOfTicks: 12 fps: 34 nodes: 56 edges: 78.
		self assert: r equals: '12 ticks, 34 fps, 56 nodes, 78 edges'