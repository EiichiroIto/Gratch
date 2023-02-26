test
testSetVarTo

	| g |
	g := self newGenerator.
	g script: GrTestScript new.
	g setVar: (self choice: 'b') to: (self literalValue: 5).
	self
		assertCollection: g code
		equals: { #pushShort. 3. 0. #pushShort. 5. 0. #setVarTo. #stop }