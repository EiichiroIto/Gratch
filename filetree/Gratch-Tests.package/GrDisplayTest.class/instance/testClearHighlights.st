test
testClearHighlights
	| d |
	d := self newDisplay.
	self assert: d highlightNode isNil.
	self assert: d highlightEdge isNil.
	d highlightNode: 123.
	d highlightEdge: 456.
	self assert: d highlightNode equals: 123.
	self assert: d highlightEdge equals: 456.
	d clearHighlights.
	self assert: d highlightNode isNil.
	self assert: d highlightEdge isNil