test
testXAt
	| w list |
	w := self newWorld.
	list := w createNodes: 3.
	w xAt: list first put: 0.
	w xAt: list second put: 5.
	w xAt: list third put: 5.
	self assert: (w xAt: list first) equals: 0.
	self assert: (w xAt: list second) equals: 5.
	self assert: (w xAt: list third) equals: 5