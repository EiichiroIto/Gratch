test
testPrivEntryPoints
	| p |
	p := self newProgram.
	self assert: p privEntryPoints isDictionary.
	self assert: p privEntryPoints isEmpty.