test
testBlockMorphBuilder

	| script obj |
	script := self newScript.
	self assert: script blockMorphBuilder isNil.
	obj := BlockMorphBuilder new.
	script blockMorphBuilder: obj.
	self assert: script blockMorphBuilder identicalTo: obj