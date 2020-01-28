test
testEdgeColumns
	| w |
	w := self newWriter.
	self assertCollection: w edgeColumns equals: w defaultEdgeColumns.
	w edgeColumns: #(a b c).
	self assertCollection: w edgeColumns equals: #(a b c).