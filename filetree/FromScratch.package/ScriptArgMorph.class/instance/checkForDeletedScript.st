private
checkForDeletedScript

	selectedScript ifNil: [ ^ self ].
	self project ifNotNil: [ :project |
		selectedScript isString
			ifTrue: [ selectedScript := project scriptNamed: selectedScript ]
			ifFalse: [
				(project scripts includes: selectedScript) ifTrue: [ ^ self ].
				selectedScript := nil ] ]