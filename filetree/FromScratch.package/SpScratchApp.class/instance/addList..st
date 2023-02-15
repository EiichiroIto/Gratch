button actions
addList: aScript

	| listName |
	listName := presenter request: 'List name?' localized.
	listName := self normalizeVariableName: listName.
	(listName isNil or: [ listName isEmpty ]) ifTrue: [ ^ self ].
	(aScript variableNameInUse: listName) ifTrue: [ 
		^ presenter alert: 'That list name is already in use!' localized ].
	aScript addList: listName.
	presenter currentCategory: #variables