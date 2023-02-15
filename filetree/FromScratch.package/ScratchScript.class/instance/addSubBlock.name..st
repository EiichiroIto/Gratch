block building
addSubBlock: aPoint name: aString

	| morph |
	morph := blockMorphBuilder subHatBlockFor: aString.
	morph position: aPoint.
	blocksBin addMorph: morph