instance creation
grWorld: aMicroWorld
	^ self basicNew
		initialize;
		grWorld: aMicroWorld;
		yourself.