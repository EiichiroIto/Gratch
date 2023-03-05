test
testForeverBlockSelectors

	| script r |
	script := self newScript.
	r := script foreverBlockSelectors.
	self assert: r isArray.
	r do: [ :each | self assert: each isSymbol ]