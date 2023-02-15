block enumerating
nextOrInnerBlocks

	| set |
	set := Set new.
	nextBlock ifNotNil: [ set add: nextBlock ].
	nestedBlock ifNotNil: [ set add: nestedBlock ].
	^ set asArray