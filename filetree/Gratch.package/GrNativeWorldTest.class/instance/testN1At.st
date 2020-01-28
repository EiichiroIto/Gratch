test
testN1At
	| w list |
	w := self newWorld.
	list := w createEdges: 3.
	self assert: (w n1At: list first) equals: 0.
	self assert: (w n1At: list second) equals: 0.
	self assert: (w n1At: list third) equals: 0.
	w n1At: list first put: 0.
	w n1At: list second put: 5.
	w n1At: list third put: 5.
	self assert: (w n1At: list first) equals: 0.
	self assert: (w n1At: list second) equals: 5.
	self assert: (w n1At: list third) equals: 5