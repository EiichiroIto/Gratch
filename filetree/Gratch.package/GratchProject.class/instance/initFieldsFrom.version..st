object i/o
initFieldsFrom: anObjStream version: classVersion
	super initFieldsFrom: anObjStream version: classVersion.
	self
		initFieldsNamed: #(edges graph nodes)
		from: anObjStream