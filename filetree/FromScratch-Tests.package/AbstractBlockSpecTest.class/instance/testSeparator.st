test
testSeparator

	| obj |
	obj := AbstractBlockSpec separator.
	self assert: (obj isKindOf: ScratchBlockSeparator).
	self assert: obj isSeparator