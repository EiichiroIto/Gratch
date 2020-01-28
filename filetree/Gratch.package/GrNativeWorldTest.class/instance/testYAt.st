test
testYAt
	| w list |
	w := self newWorld.
	list := w createNodes: 3.
	w yAt: list first put: 5.
	w yAt: list second put: 5.
	w yAt: list third put: 0.
	self assert: (w yAt: list first) equals: 5.
	self assert: (w yAt: list second) equals: 5.
	self assert: (w yAt: list third) equals: 0