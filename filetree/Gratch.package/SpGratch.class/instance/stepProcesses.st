processes
stepProcesses
	process ifNotNil: [ process step ].
	project ifNotNil: [ self updateStatus ].
	presenter updateDisplay.
	recorder ifNotNil: [ recorder writeForced: false ]