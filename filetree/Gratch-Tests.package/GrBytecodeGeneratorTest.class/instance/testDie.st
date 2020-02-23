test
testDie
	| g |
	g := self newGenerator.
	g die.
	self
		assertCollection: g code
		equals:
			{#getBreedId.
			#getId.
			#kill.
			#stop}