test
testBlocksBin

	| script obj |
	script := self newScript.
	self assert: (script blocksBin isKindOf: ScratchScriptsMorph).
	obj := ScratchScriptsMorph new.
	script blocksBin: obj.
	self assert: script blocksBin identicalTo: obj