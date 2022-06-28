inspecting
deleteObject
	inspectorTarget ifNil: [ ^ self ].
	self grWorld kill: inspectorTarget second breed: inspectorTarget first.
	application updateStatusForced: true.
	self updateDisplay.
	self clearInspector