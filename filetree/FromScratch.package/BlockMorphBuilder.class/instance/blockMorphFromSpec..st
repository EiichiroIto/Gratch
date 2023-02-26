private
blockMorphFromSpec: aBlockSpec

	| block |
	aBlockSpec isStartHatBlock ifTrue: [ ^ StartHatMorph new ].
	aBlockSpec isEventHatBlock ifTrue: [ ^ EventHatMorph new ].
	block := aBlockSpec isCBlock
		         ifTrue: [ 
			         aBlockSpec selector asSymbol = #doIfElse
				         ifTrue: [ IfElseBlockMorph new isSpecialForm: true ]
				         ifFalse: [ CBlockMorph new isSpecialForm: true ] ]
		         ifFalse: [ 
			         aBlockSpec isReporterBlock
				         ifTrue: [ ReporterBlockMorph new ]
				         ifFalse: [ CommandBlockMorph new ] ].
	aBlockSpec isBooleanReporter ifTrue: [ block isBoolean: true ].
	aBlockSpec isSpecialForm ifTrue: [ block isSpecialForm: true ].
	aBlockSpec isTimedBlock ifTrue: [ block isTimed: true ].
	^ block