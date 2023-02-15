button actions
addVariable: aScript

	| varName |
	varName := presenter request: 'Variable name?' localized.
	varName := self normalizeVariableName: varName.
	(varName isNil or: [ varName isEmpty ]) ifTrue: [ ^ self ].
	(aScript variableNameInUse: varName) ifTrue: [ 
		^ presenter alert: 'That variable name is already in use!' localized ].
	aScript addVariable: varName.
	presenter currentCategory: #variables