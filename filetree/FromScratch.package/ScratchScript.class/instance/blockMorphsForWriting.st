block building
blockMorphsForWriting

	^ blocksBin submorphs select: [ :m | m respondsTo: #tupleSequence ]