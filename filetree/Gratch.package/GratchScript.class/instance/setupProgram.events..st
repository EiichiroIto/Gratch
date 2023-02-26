program
setupProgram: aProgram events: aDictionary

	| subTable |
	subTable := Dictionary new.
	self subHatBlocks do: [ :each | 
		self setupSub: each program: aProgram table: subTable ].
	self eventHatBlocks do: [ :each | 
		self
			setupEvent: each
			program: aProgram
			table: subTable
			events: aDictionary ].
	self startHatBlocks do: [ :each | 
		self
			setupStart: each
			program: aProgram
			table: subTable
			events: aDictionary ]