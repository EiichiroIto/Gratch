test
testColumnWithData
	| r ret |
	r := self newReader.
	r privColumns: #(1 2 3).
	ret := r columnWithData: #(4 5 6).
	self
		assertCollection: ret asArray
		equals:
			{{1 . 4}.
			{2 . 5}.
			{3 . 6}}