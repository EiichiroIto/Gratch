test
testCBlockSelectors

	| script r |
	script := self newScript.
	r := script cBlockSelectors.
	self assert: r isArray.
	r do: [ :each | self assert: each isSymbol ]