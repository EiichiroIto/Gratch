menu actions
duplicateBlock: aBlockMorph
	| code obj |
	code := self serializeBlocks: aBlockMorph.
	obj := self deserializeFrom: code.
	obj ifNil: [ ^ self ].
	aBlockMorph activeHand grabMorph: obj