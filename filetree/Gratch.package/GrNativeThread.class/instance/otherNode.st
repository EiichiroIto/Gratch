sensing ops
otherNode
	| x |
	x := grWorld randomBreed: breedId except: id.
	self push: x