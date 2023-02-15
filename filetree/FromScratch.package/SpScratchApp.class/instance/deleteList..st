button actions
deleteList: aScript

	"Ask the user which user variable to delete, then remove it."

	| list choice |
	list := aScript listVarNames.
	list isEmpty ifTrue: [ ^ self ].
	choice := presenter select: 'Choose list var to delete.' localized chooseFrom: list.
	choice ifNil: [ ^ self ].
	aScript deleteList: choice.
	presenter currentCategory: #variables