object i/o
initFieldsFrom: anObjStream version: classVersion
	self initFieldsNamed: #(varNames varClasses) from: anObjStream.
	self regularize