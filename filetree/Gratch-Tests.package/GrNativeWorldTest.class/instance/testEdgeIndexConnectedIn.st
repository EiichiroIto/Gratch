test
testEdgeIndexConnectedIn
	| w edges list |
	w := self newWorld.
	edges := w createEdges: 5.
	w n1At: edges first put: 1.
	w n2At: edges first put: 2.
	w n1At: edges second put: 1.
	w n2At: edges second put: 3.
	w n1At: edges third put: 1.
	w n2At: edges third put: 4.
	w n1At: edges fourth put: 2.
	w n2At: edges fourth put: 3.
	w n1At: edges fifth put: 4.
	w n2At: edges fifth put: 1.
	list := w edgeIndexConnectedIn: #(1 2 3).
	self assertCollection: list equals: #(1 2 4).
	list := w edgeIndexConnectedIn: #(1 4).
	self assertCollection: list equals: #(3 5)