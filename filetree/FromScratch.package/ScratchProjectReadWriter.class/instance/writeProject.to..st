api
writeProject: aProject to: aStream

	aProject scripts do: [ :script | 
		script fixScriptBeforeWriting.
		script convertStacksToTuples ].
	[ 
	aStream nextPutAll: self fileVersionString asByteArray.
	self storeProjectInfo: aProject info on: aStream.
	objStream storeObj: aProject on: aStream ] ensure: [ 
		aProject scripts do: [ :m | m convertTuplesToStacks ] ]