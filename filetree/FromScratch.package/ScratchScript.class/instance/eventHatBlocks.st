accessing
eventHatBlocks

	^ blocksBin submorphs select: [ :m | m class = EventHatMorph ]