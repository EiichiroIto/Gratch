block enumerating
nextOrInnerBlocks

	^ self nextBlock
		  ifNil: [ #(  ) ]
		  ifNotNil: [ :block | Array with: block ]