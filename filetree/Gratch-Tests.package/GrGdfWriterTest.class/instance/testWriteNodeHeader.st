test
testWriteNodeHeader
	| w |
	w := self newWriter.
	w nodeColumns: #(x y).
	w writeNodeHeader.
	self assert: w stream contents equals: ('nodedef>x DOUBLE,y DOUBLE', String crlf).