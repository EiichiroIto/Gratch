test
testGraphIsConnected
	| w |
	w := self newWorld.
	self assert: w graphIsConnected.
	w createNodes: 3.
	w n1At: 1 put: 1.
	w n2At: 1 put: 2.
	w n1At: 2 put: 2.
	w n2At: 2 put: 3.
	self assert: w graphIsConnected.
	w kill: 2 breed: GrBreedId edgesBreedNo.
	self deny: w graphIsConnected.
	w clearBreed: GrBreedId nodesBreedNo.
	w createNodes: 4.
	w n1At: 1 put: 1.
	w n2At: 1 put: 2.
	w n1At: 2 put: 3.
	w n2At: 2 put: 4.
	self deny: w graphIsConnected.
	w n1At: 3 put: 4.
	w n2At: 3 put: 1.
	self assert: w graphIsConnected