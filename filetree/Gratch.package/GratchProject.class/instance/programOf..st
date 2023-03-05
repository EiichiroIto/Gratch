accessing
programOf: aDictionary

	| program |
	program := self newProgram.
	scripts do: [ :each | each setupProgram: program events: aDictionary ].
	^ program