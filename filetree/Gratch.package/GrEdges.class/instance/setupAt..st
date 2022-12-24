microworld
setupAt: index

	super setupAt: index.
	self colorAt: index put: self defaultColor.
	self killAt: index