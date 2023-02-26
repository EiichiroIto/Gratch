test
testCode

	| b arr |
	b := self newGenerator.
	arr := b code.
	self assertCollection: arr equals: #( stop )