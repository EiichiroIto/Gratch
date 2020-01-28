object i/o
storeFieldsOn: anObjStream
	super storeFieldsOn: anObjStream.
	self storeFieldsNamed: #(edges graph nodes) on: anObjStream.