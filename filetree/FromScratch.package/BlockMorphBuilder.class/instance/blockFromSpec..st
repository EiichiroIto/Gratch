private
blockFromSpec: aBlockSpec

	| blockLabelSpec selector block argPermutation c defaultArgs |
	c := aBlockSpec color.
	blockLabelSpec := aBlockSpec label localized.
	argPermutation := CommandBlockMorph
		                  argPermutationForSpec: aBlockSpec label
		                  withTranslation: blockLabelSpec.
	selector := aBlockSpec selector asSymbol.
	block := self blockMorphFromSpec: aBlockSpec.
	aBlockSpec isReporterBlock ifTrue: [ c := c darker ].
	defaultArgs := script defaultArgsFor: aBlockSpec.
	^ block
		  argPermutation: argPermutation;
		  color: c;
		  selector: selector;
		  receiver: script;
		  commandSpec: blockLabelSpec;
		  defaultArgs: defaultArgs;
		  yourself