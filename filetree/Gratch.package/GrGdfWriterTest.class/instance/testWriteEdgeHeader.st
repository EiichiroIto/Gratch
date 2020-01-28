test
testWriteEdgeHeader
	| w |
	w := self newWriter.
	w edgeColumns: #(a b).
	w writeEdgeHeader.
	self assert: w privStream contents equals: ('edgedef>a DOUBLE,b DOUBLE', String crlf).