test
testRandomBreedExcept
	| w list n |
	w := self newWorld.
	w createNodes: 4.
	w pointAt: 1 put: 0 @ 0.
	w pointAt: 2 put: 1 @ 1.
	w pointAt: 3 put: 2 @ 2.
	w pointAt: 4 put: 4 @ 4.
	list := Set new.
	100
		timesRepeat: [ n := w randomBreed: GrBreedId nodesBreedNo except: 2.
			list add: n ].
	self assertCollection: list asArray sorted equals: #(1 3 4)