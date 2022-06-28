button actions
addList: aScript

	| listName |
	listName := self request: 'List name?' localized.
	listName := self normalizeVariableName: listName.
	(listName isNil or: [ listName isEmpty ]) ifTrue: [ ^ self ].
	(aScript variableNameInUse: listName) ifTrue: [ 
		^ self alert: 'That list name is already in use!' localized ].
	aScript addList: listName.
	presenter currentCategory: #variables