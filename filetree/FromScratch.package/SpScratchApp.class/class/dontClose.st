settings
dontClose
	^ self settings at: #dontClose ifAbsentPut: [ false ]