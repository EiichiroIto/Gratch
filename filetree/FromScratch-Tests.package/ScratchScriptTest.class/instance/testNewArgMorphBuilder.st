test
testNewArgMorphBuilder

	| script obj |
	script := self newScript.
	obj := script newArgMorphBuilder.
	self assert: (obj isKindOf: ArgMorphBuilder)