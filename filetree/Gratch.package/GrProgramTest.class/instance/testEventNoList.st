test
testEventNoList
	| p |
	p := self newProgram.
	self assert: p eventNoList isEmpty.
	p forEventNo: 1.
	p forEventNo: 3.
	self assertCollection: p eventNoList sort equals: #(1 3).