test
testStopBlockSelectors

	| script r |
	script := self newScript.
	r := script stopBlockSelectors.
	self assert: r isArray.
	r do: [ :each | self assert: each isSymbol ]