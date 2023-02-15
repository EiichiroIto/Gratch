api
blockSelectorOf: aString

	blockSpecDictionary keysAndValuesDo: [ :key :value | 
		aString = value label ifTrue: [ ^ key ] ].
	^ nil