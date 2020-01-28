test
testCreateEdges
	| w list |
	w := self newWorld.
	list := w createEdges: 5.
	self assertCollection: list equals: #(1 2 3 4 5).
	w n1At: list first put: 3.
	w n2At: list first put: 3.
	w n1At: list third put: 4.
	w n2At: list third put: 4.
	list := w createEdges: 2.
	self assertCollection: list equals: #(2 4).