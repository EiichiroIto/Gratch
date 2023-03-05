test
testVariableBlockSelectors

	| script r |
	script := self newScript.
	r := script variableBlockSelectors.
	self assert: r isArray.
	r do: [ :each | self assert: each isSymbol ]