api
addEventHatBlock: aString selector: aSymbol eventName: aString2

	| blockSpec |
	blockSpec := AbstractBlockSpec
		             eventHatBlock: aString
		             selector: aSymbol
		             eventName: aString2.
	self assert: [ blockSpec isEventHatBlock ].
	self registerBlockSpec: blockSpec asCategory: lastCategory