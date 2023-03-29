private
checkForDeletedScript

	selectedScript ifNil: [ ^ self ].
	self project ifNotNil: [ :project | 
		(project scripts includes: selectedScript) ifTrue: [ ^ self ].
		selectedScript := nil ]