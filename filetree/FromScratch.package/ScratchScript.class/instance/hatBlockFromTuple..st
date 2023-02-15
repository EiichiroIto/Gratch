block building
hatBlockFromTuple: tuple

	| blockClass eventName |
	blockClass := Smalltalk at: tuple first.
	eventName := tuple at: 2.
	blockClass = SubHatMorph ifTrue: [ 
		^ blockMorphBuilder subHatBlockFor: eventName ].
	blockClass = EventHatMorph ifTrue: [ 
		eventName = 'start' ifTrue: [ ^ blockMorphBuilder startHatBlock ].
		eventName = 'startup' ifTrue: [ ^ blockMorphBuilder startupHatBlock ].
		eventName = 'setup' ifTrue: [ ^ blockMorphBuilder setupHatBlock ].
		eventName = 'loop' ifTrue: [ ^ blockMorphBuilder loopHatBlock ].
		^ blockMorphBuilder eventHatBlockFor: eventName ].
	self error