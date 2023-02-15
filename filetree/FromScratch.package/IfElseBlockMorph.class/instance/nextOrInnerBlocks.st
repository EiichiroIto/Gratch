block enumerating
nextOrInnerBlocks

	| set |
	set := Set new.
	nextBlock ifNotNil: [ set add: nextBlock ].
	trueBlock ifNotNil: [ set add: trueBlock ].
	falseBlock ifNotNil: [ set add: falseBlock ].
	^ set asArray