test
testParseDef
	| r ret |
	r := self newReader.
	ret := r
		parseDef:
			'name VARCHAR,label VARCHAR,width DOUBLE,height DOUBLE,x DOUBLE,y DOUBLE,color VARCHAR'.
	self
		assertCollection: ret
		equals:
			{{'name' . 'VARCHAR'}.
			{'label' . 'VARCHAR'}.
			{'width' . 'DOUBLE'}.
			{'height' . 'DOUBLE'}.
			{'x' . 'DOUBLE'}.
			{'y' . 'DOUBLE'}.
			{'color' . 'VARCHAR'}}.
	ret := r
		parseDef:
			'node1 VARCHAR,node2 VARCHAR,directed BOOLEAN,label VARCHAR,color VARCHAR'.
	self
		assertCollection: ret
		equals:
			{{'node1' . 'VARCHAR'}.
			{'node2' . 'VARCHAR'}.
			{'directed' . 'BOOLEAN'}.
			{'label' . 'VARCHAR'}.
			{'color' . 'VARCHAR'}}