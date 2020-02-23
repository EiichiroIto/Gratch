test
testInitialize
	| scr |
	scr := self newScript.
	self assert: scr labels isArray.
	self assert: scr labels isEmpty