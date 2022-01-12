accessing
fixUnsavedFields
	blocksBin allMorphs
		do: [ :each | 
			each isArgMorph
				and: [ each isExpressionArg
						ifTrue: [ each loseKeyboardFocus ] ] ]