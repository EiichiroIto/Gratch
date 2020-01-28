object i/o
storeFieldsOn: anObjStream
	super storeFieldsOn: anObjStream.
	self storeFieldsNamed: #(ticks) on: anObjStream.