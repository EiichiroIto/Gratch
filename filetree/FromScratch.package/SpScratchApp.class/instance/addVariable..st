button actions
addVariable: aScript

	| varName |
	varName := self request: 'Variable name?' localized.
	varName := self normalizeVariableName: varName.
	(varName isNil or: [ varName isEmpty ]) ifTrue: [ ^ self ].
	(aScript variableNameInUse: varName) ifTrue: [ 
		^ self alert: 'That variable name is already in use!' localized ].
	aScript addVariable: varName.
	presenter currentCategory: #variables