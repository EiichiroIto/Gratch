menu actions
confirmForNewProject

	| response |
	self closeMediaEditorsAndDialogs.
	self stopAllProcesses.
	(project notNil and: [ project modified ]) ifTrue: [ 
		response := presenter confirm: 'Save the current project?' localized.
		response ifTrue: [ ^ self saveProjectNoDialog ] ].
	^ true