test
testGetVarBreedNoAt
	| g |
	g := self newGenerator.
	g getVar: [ :x | 5 ] breedNo: 4 at: 3.
	self
		assertCollection: g code
		equals:
			{#pushShort . 3 . 0 . #pushShort . 5 . 0 . #pushShort . 4 . 0 . #getBreedVar.
			#stop}