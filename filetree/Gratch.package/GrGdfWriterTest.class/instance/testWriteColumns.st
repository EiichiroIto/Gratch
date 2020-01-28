test
testWriteColumns
	| w |
	w := self newWriter.
	w writeColumns: #(x y name z).
	self assert: w privStream contents equals: 'x DOUBLE,y DOUBLE,name VARCHAR,z DOUBLE'