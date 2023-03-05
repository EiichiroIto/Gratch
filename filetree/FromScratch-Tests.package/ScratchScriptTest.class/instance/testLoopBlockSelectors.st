test
testLoopBlockSelectors

	| script r |
	script := self newScript.
	r := script loopBlockSelectors.
	self assert: r isArray.
	r do: [ :each | self assert: each isSymbol ]