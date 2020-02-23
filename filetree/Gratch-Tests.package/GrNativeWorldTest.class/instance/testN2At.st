test
testN2At
	| w list |
	w := self newWorld.
	list := w createEdges: 3.
	self assert: (w n2At: list first) equals: 0.
	self assert: (w n2At: list second) equals: 0.
	self assert: (w n2At: list third) equals: 0.
	w n2At: list first put: 0.
	w n2At: list second put: 5.
	w n2At: list third put: 5.
	self assert: (w n2At: list first) equals: 0.
	self assert: (w n2At: list second) equals: 5.
	self assert: (w n2At: list third) equals: 5