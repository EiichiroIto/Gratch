api
addBlockSpec: aBlockSpec

	aBlockSpec isBlockSpec ifTrue: [ ^ self ].
	aBlockSpec isCategory ifTrue: [ ^ self ].
	aBlockSpec isSeparator ifTrue: [ ^ self ].
	aBlockSpec isChoiceArg ifTrue: [ 
		^ self
			  addChoiceArg: aBlockSpec arg
			  options: aBlockSpec options
			  initialChoice: '' ].
	self error