api
addStartHatBlock: aString selector: aSymbol

	| blockSpec |
	blockSpec := AbstractBlockSpec
		             startHatBlock: aString
		             selector: aSymbol.
	self assert: [ blockSpec isStartHatBlock ].
	self registerBlockSpec: blockSpec asCategory: lastCategory