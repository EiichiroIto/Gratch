test
testPointAt
	| w list |
	w := self newWorld.
	list := w createNodes: 3.
	w pointAt: list first put: 1 @ 2.
	w pointAt: list second put: 3 @ 4.
	w pointAt: list third put: 4 @ 5.
	self assert: (w pointAt: list first) equals: 1 @ 2.
	self assert: (w pointAt: list second) equals: 3 @ 4.
	self assert: (w pointAt: list third) equals: 4 @ 5.