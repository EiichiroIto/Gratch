test
testExportNodes
	| w g ret |
	g := self newWorld.
	g createNodes: 2.
	g xAt: 1 put: 1.
	g yAt: 1 put: 2.
	g xAt: 2 put: 3.
	g yAt: 2 put: 4.
	w := self newWriter: g.
	w nodeColumns: #(x y).
	w exportNodes.
	ret := w privStream contents.
	self
		assert: ret
		equals:
			'nodedef>x DOUBLE,y DOUBLE' , String crlf , '1.0,2.0' , String crlf
				, '3.0,4.0' , String crlf