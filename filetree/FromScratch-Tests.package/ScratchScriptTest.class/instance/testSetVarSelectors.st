test
testSetVarSelectors

	| script r |
	script := self newScript.
	r := script setVarSelectors.
	self assert: r isArray.
	r do: [ :each | self assert: each isSymbol ]