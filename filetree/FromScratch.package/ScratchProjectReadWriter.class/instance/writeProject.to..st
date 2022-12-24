api
writeProject: aProject to: aStream

	aProject scripts do: [ :m | 
		m blocksBin allMorphsDo: [ :b | 
			b isBlockMorph ifTrue: [ b stopProcess ] ].
		m convertStacksToTuples ].
	[ 
	aStream nextPutAll: self fileVersionString asByteArray.
	self storeProjectInfo: aProject info on: aStream.
	objStream storeObj: aProject on: aStream ] ensure: [ 
		aProject scripts do: [ :m | m convertTuplesToStacks ] ]