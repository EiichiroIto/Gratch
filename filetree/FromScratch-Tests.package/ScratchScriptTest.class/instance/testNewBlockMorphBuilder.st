test
testNewBlockMorphBuilder

	| script obj |
	script := self newScript.
	obj := script newBlockMorphBuilder.
	self assert: (obj isKindOf: BlockMorphBuilder).
	self assert: obj script identicalTo: script