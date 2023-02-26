test
testImportLine
	| r w |
	r := self newReader.
	w := self newWorld.
	r grWorld: w.
	r
		importLine:
			'nodedef>name VARCHAR,label VARCHAR,width DOUBLE,height DOUBLE,x DOUBLE,y DOUBLE,color VARCHAR'.
	self
		assertCollection: r privColumns
		equals:
			{{'name' . 'VARCHAR'}.
			{'label' . 'VARCHAR'}.
			{'width' . 'DOUBLE'}.
			{'height' . 'DOUBLE'}.
			{'x' . 'DOUBLE'}.
			{'y' . 'DOUBLE'}.
			{'color' . 'VARCHAR'}}.
	self assert: r privState equals: #node.
	r importLine: 's1,''Objectworks'',4,4,209.0,246.0,''203,255,153'''.
	self assert: (r privNodes at: 's1') equals: 1.
	self assert: (w xAt: 1) equals: 209.0.
	self assert: (w yAt: 1) equals: 246.0