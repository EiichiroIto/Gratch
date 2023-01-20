change reporting
projectModified

	presenter ifNil: [ ^ self ].
	presenter modifiedText: (project modified
			 ifTrue: [ '[modified]' localized ]
			 ifFalse: [ '' ])