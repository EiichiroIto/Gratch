accessing
subHatBlocks
	^ blocksBin submorphs select: [:m | m class = SubHatMorph]