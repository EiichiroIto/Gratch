microworld
setupAt: index
	self colorAt: index put: self defaultColor.
	self flag: varId class aliveFlagNo at: index put: true.
	self pointAt: index put: self defaultPosition.