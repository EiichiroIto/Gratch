accessing
forEventNo: anInteger
	^ entryPoints at: anInteger ifAbsentPut: [ GrEntryPoints new ]