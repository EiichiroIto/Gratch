test
testWatcherSelectors

	| script r |
	script := self newScript.
	r := script watcherSelectors.
	self assert: r isArray.
	r do: [ :each | self assert: each isSymbol ]