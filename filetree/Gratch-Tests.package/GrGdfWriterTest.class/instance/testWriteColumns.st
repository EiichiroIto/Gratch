test
testWriteColumns
	| w |
	w := self newWriter.
	w writeColumns: #(x y name z).
	self assert: w stream contents equals: 'x DOUBLE,y DOUBLE,name VARCHAR,z DOUBLE'