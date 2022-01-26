menu actions
confirmForNewProject
	| response |
	self closeMediaEditorsAndDialogs.
	self stopAllProcesses.
	(project notNil and: [ project modified ])
		ifTrue: [ response := UIManager default
				confirm: 'Save the current project?' localized
				orCancel: [ ^ false ].
			response
				ifTrue: [ ^ self saveProjectNoDialog ] ].
	^ true