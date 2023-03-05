test
testInitialize

	| script |
	script := self newScript.
	self assert: (script blocksBin isKindOf: ScratchScriptsMorph)