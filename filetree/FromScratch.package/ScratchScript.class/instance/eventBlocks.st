accessing
eventBlocks
	^ blocksBin submorphs select: [:m | m class = EventHatMorph]