microworld
setupAt: index

	super setupAt: index.
	self colorAt: index put: self defaultColor.
	self flag: varDef class aliveFlagNo at: index put: true.
	self pointAt: index put: self defaultPosition.