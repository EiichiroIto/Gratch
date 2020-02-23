test
testNodesCenterDistance
	| w list |
	w := self newWorld.
	w createNodes: 4.
	w pointAt: 1 put: 0 @ 0.
	w pointAt: 2 put: 1 @ 1.
	w pointAt: 3 put: 2 @ 2.
	w pointAt: 4 put: 4 @ 4.
	list := w nodesCenter: 1 @ 1 distance: 1.5.
	self assertCollection: list equals: #(1 2 3).
	list := w nodesCenter: 0 @ 0 distance: 1.5.
	self assertCollection: list equals: #(1 2)