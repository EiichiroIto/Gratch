block building
viewerPageForCategory: aCategoryName

	| bin x y |
	aCategoryName = 'variables' ifTrue: [ ^ self variablesPage ].
	bin := self newBlockPaletteMorph.
	x := 12.
	y := 10.
	(self blocksFor: aCategoryName) do: [ :each | 
		y := each isBlockMorph
			     ifTrue: [ 
			     self createBlock: each atPosition: x @ y onPage: bin ]
			     ifFalse: [ 
				     each isSeparator
					     ifTrue: [ y + 15 ]
					     ifFalse: [ self error ] ] ].
	^ bin