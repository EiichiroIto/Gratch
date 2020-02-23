test
testLabels
	| scr |
	scr := self newScript.
	self assert: scr labels isEmpty.
	self assert: scr labels size equals: 0.
	scr toggleLabel: 'a'.
	scr toggleLabel: 'b'.
	self assertCollection: scr labels equals: #('a' 'b')