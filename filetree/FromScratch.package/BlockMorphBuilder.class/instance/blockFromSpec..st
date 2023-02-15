private
blockFromSpec: aBlockSpec

	| blockLabelSpec selector block argPermutation c defaultArgs |
	c := aBlockSpec color.
	blockLabelSpec := aBlockSpec label localized.
	argPermutation := CommandBlockMorph
		                  argPermutationForSpec: aBlockSpec label
		                  withTranslation: blockLabelSpec.
	aBlockSpec isHatBlock ifTrue: [ 
		^ (script hatBlockFromSpec: aBlockSpec) color: c ].
	selector := aBlockSpec selector asSymbol.
	aBlockSpec isCBlock
		ifTrue: [ 
			block := selector = #doIfElse
				         ifTrue: [ IfElseBlockMorph new isSpecialForm: true ]
				         ifFalse: [ CBlockMorph new isSpecialForm: true ] ]
		ifFalse: [ 
			aBlockSpec isReporterBlock
				ifTrue: [ 
					block := ReporterBlockMorph new.
					c := c darker ]
				ifFalse: [ block := CommandBlockMorph new ] ].
	aBlockSpec isBooleanReporter ifTrue: [ block isBoolean: true ].
	aBlockSpec isSpecialForm ifTrue: [ block isSpecialForm: true ].
	aBlockSpec isTimedBlock ifTrue: [ block isTimed: true ].
	defaultArgs := script defaultArgsFor: aBlockSpec.
	^ block
		  argPermutation: argPermutation;
		  color: c;
		  selector: selector;
		  receiver: script;
		  commandSpec: blockLabelSpec;
		  defaultArgs: defaultArgs;
		  yourself