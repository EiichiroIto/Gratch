button actions
deleteVariable: aScript
	"Ask the user which user variable to delete, then remove it."

	| list choice |
	list := aScript varNames.
	list isEmpty
		ifTrue: [ ^ self ].
	choice := presenter select: 'Choose variable to delete.' localized chooseFrom: list.
	choice ifNil: [ ^ self ].
	aScript deleteVariable: choice.
	presenter currentCategory: #variables