accessing
subBlocks
	^ blocksBin submorphs select: [:m | m class = SubHatMorph]