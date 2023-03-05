test
testNewScriptsMorph

	| script obj |
	script := self newScript.
	obj := script newScriptsMorph.
	self assert: (obj isKindOf: ScratchScriptsMorph)