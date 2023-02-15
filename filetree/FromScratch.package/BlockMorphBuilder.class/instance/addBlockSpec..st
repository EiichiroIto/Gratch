api
addBlockSpec: aBlockSpec

	aBlockSpec isBlockSpec ifTrue: [ 
		^ self registerBlockSpec: aBlockSpec asCategory: lastCategory ].
	aBlockSpec isCategory ifTrue: [ 
		^ lastCategory := aBlockSpec categoryName ].
	aBlockSpec isSeparator ifTrue: [ 
		^ self appendBlockSpec: aBlockSpec into: lastCategory ].
	aBlockSpec isChoiceArg ifTrue: [ ^ self ].
	self error