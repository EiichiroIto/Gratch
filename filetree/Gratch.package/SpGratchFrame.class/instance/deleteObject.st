private
deleteObject
	inspectorTarget ifNil: [ ^ self ].
	self grWorld kill: inspectorTarget second breed: inspectorTarget first.
	self clearInspector