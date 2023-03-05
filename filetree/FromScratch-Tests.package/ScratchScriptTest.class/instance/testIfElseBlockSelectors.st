test
testIfElseBlockSelectors

	| script r |
	script := self newScript.
	r := script ifElseBlockSelectors.
	self assert: r isArray.
	r do: [ :each | self assert: each isSymbol ]