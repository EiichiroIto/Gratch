processes
stepProcesses
	| oldRunning |
	oldRunning := self isProcessRunning.
	oldRunning
		ifTrue: [ process step ].
	project ifNotNil: [ self updateStatusForced: false ].
	(oldRunning or: [ self isProcessRunning ])
		ifFalse: [ ^ self ].
	presenter updateDisplay.
	recorder ifNil: [ ^ self ].
	recorder writeForced: false