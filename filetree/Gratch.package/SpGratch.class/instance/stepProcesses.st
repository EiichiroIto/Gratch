processes
stepProcesses
	process ifNotNil: [ process step ].
	project ifNotNil: [ self updateStatus ].
	presenter updateDisplay.
	presenter updateInspector.
	recorder ifNotNil: [ recorder writeForced: false ]