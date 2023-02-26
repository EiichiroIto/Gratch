private
serializeBlocks: aTopBlock
	| code |
	code := self newSerializer parseBlock: aTopBlock initialIndent: 1.
	aTopBlock isHatBlock
		ifFalse: [ code := '(' , code , ')' ].
	^ code