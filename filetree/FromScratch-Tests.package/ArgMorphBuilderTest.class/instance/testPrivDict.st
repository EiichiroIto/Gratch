test
testPrivDict
	| b |
	b := self newBuilder.
	self assert: b dict isDictionary.
	self assert: b dict isEmpty