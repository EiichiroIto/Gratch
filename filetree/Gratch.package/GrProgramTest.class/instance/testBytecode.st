test
testBytecode
	| p |
	p := self newProgram.
	self assert: p codes isEmpty.
	p privCodes: #(1 2 3).
	self assertCollection: p bytecode equals: #(1 2 3).
	p privCodes: #(1 2 div mod 3).
	self assertCollection: p bytecode equals: #(1 2 20 45 3).