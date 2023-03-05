test
testSpecialCommandSelectors

	| script r |
	script := self newScript.
	r := script specialCommandSelectors.
	self assert: r isArray.
	r do: [ :each | self assert: each isSymbol ]