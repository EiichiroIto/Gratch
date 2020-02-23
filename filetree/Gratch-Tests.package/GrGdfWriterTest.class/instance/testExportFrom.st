test
testExportFrom
	| w g ret |
	g := self newWorld.
	g createNodes: 2.
	g xAt: 1 put: 1.
	g yAt: 1 put: 2.
	g xAt: 2 put: 3.
	g yAt: 2 put: 4.
	g createEdges: 1.
	g n1At: 1 put: 1.
	g n2At: 1 put: 2.
	g
		var: GrEdgesVarDef colorVarNo
		breed: GrBreedId edgesBreedNo
		at: 1
		put: ColorList blue.
	w := self newWriter: g.
	w nodeColumns: #(x y).
	w edgeColumns: #(node1 node2).
	ret := w exportFrom: g.
	self
		assert: ret
		equals:
			'nodedef>x DOUBLE,y DOUBLE' , String crlf , '1.0,2.0' , String crlf
				, '3.0,4.0' , String crlf , 'edgedef>node1 VARCHAR,node2 VARCHAR'
				, String crlf , 's1,s2' , String crlf