test
testHasLabel
	| scr |
	scr := self newScript.
	self deny: (scr hasLabel: 'a').
	self assert: scr labels size equals: 0.
	scr toggleLabel: 'a'.
	self assert: (scr hasLabel: 'a').
	self assert: scr labels size equals: 1.
	scr toggleLabel: 'a'.
	self deny: (scr hasLabel: 'a').
	self assert: scr labels size equals: 0.