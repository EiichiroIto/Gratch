private
watcherLabelFor: aBlockMorph
	^ aBlockMorph isVariableBlock
		ifTrue: [ aBlockMorph variable ]
		ifFalse: [ self varNameFor: aBlockMorph selector ]