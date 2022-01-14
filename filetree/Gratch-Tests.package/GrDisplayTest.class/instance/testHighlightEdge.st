test
testHighlightEdge
	| d |
	d := self newDisplay.
	self assert: d highlightEdge isNil.
	d highlightEdge: 123.
	self assert: d highlightEdge equals: 123.
	d highlightEdge: 456.
	self assert: d highlightEdge equals: 456