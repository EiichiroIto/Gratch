test
testWriteEdgeHeader
	| w |
	w := self newWriter.
	w edgeColumns: #(a b).
	w writeEdgeHeader.
	self assert: w stream contents equals: ('edgedef>a DOUBLE,b DOUBLE', String crlf).