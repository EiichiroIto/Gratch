initialization
initSetterForVar: varName

	self commandSpec: 'set %v to %n' localized.
	argPermutation := CommandBlockMorph
		                  argPermutationForSpec: 'set %v to %n'
		                  withTranslation: commandSpec.
	self selector: #setVar:to:.
	self variable: varName.
	self expressionArg stringExpression: '0'