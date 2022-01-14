test
testHighlightNode
	| d |
	d := self newDisplay.
	self assert: d highlightNode isNil.
	d highlightNode: 123.
	self assert: d highlightNode equals: 123.
	d highlightNode: 456.
	self assert: d highlightNode equals: 456