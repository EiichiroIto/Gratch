api
addHatBlock: aString type: aString2 arguments: aCollection

	| blockSpec |
	blockSpec := AbstractBlockSpec
		             hatBlock: aString
		             type: aString2
		             arguments: aCollection.
	self assert: [ blockSpec isHatBlock ].
	self registerBlockSpec: blockSpec asCategory: lastCategory