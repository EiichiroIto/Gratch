accessing
formFromStream: aStream

	| reader form |
	reader := self new newProjectReadWriter.
	form := SpScratchApp
		        try: [ reader extractFormOn: aStream ]
		        onFailure: [ nil ].
	^ form