accessing
startHatBlocks

	^ blocksBin submorphs select: [ :m | m class = StartHatMorph ]