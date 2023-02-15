block building
hatBlockFromSpec: aBlockSpec

	aBlockSpec isEventHatBlock ifTrue: [ 
		^ blockMorphBuilder eventHatBlockFor: project defaultEventName ].
	aBlockSpec isStartHatBlock ifTrue: [ 
		^ blockMorphBuilder startHatBlock ].
	aBlockSpec isSetupHatBlock ifTrue: [ 
		^ blockMorphBuilder setupHatBlock ].
	aBlockSpec isStartupHatBlock ifTrue: [ 
		^ blockMorphBuilder startupHatBlock ].
	aBlockSpec isLoopHatBlock ifTrue: [ ^ blockMorphBuilder loopHatBlock ].
	aBlockSpec isSubHatBlock ifTrue: [ 
		^ blockMorphBuilder subHatBlockFor: project defaultSubName ].
	self error