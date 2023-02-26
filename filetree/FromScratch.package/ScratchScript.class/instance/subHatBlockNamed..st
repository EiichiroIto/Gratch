accessing
subHatBlockNamed: aString
	^ self subHatBlocks detect: [ :each | each subName = aString ] ifNone: [ nil ]