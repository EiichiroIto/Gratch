test
testNodeIndexOfArea
	| w list |
	w := self newWorld.
	list := w createNodes: 3.
	w xAt: list first put: 0.
	w yAt: list first put: 5.
	w xAt: list second put: 5.
	w yAt: list second put: 5.
	w xAt: list third put: 5.
	w yAt: list third put: 00.
	self
		assertCollection: (w nodeIndexOfArea: (4 @ 4 corner: 6 @ 6))
		equals: {list second}