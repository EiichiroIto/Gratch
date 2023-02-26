test
testKillBreed

	| g |
	g := self newGenerator.
	g kill: (self literalValue: 5) breed: (self literalValue: 3).
	self
		assertCollection: g code
		equals: { #pushShort. 3. 0. #pushShort. 5. 0. #kill. #stop }