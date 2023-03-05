test
testGetVarSelectors

	| script r |
	script := self newScript.
	r := script getVarSelectors.
	self assert: r isArray.
	r do: [ :each | self assert: each isSymbol ]