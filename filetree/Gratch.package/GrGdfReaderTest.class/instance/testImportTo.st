test
testImportTo
	| r w s |
	r := self newReader.
	w := self newWorld.
	s := 'nodedef>name VARCHAR,label VARCHAR,width DOUBLE,height DOUBLE,x DOUBLE,y DOUBLE,color VARCHAR
	s1,''Objectworks'',4,4,209.0,246.0,''203,255,153'''.
	r import: s to: w.
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
	self assert: (r privNodes at: 's1') equals: 1.
	self assert: (w xAt: 1) equals: 209.0.
	self assert: (w yAt: 1) equals: 246.0