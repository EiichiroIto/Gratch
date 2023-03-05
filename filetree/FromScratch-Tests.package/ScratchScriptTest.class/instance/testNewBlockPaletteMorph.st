test
testNewBlockPaletteMorph

	| script project obj |
	script := self newScript.
	project := ScratchProject new.
	script project: project.
	obj := script newBlockPaletteMorph.
	self assert: (obj isKindOf: ScratchBlockPaletteMorph).
	self assert: obj project identicalTo: project