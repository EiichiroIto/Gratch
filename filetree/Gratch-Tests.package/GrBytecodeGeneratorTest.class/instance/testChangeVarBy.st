test
testChangeVarBy

	| g |
	g := self newGenerator.
	g script: GrTestScript new.
	g changeVar: (self choice: 'a') by: (self literalValue: 10).
	self
		assertCollection: g code
		equals:
			{ #pushShort. 5. 0. #dup. #getVar. #pushShort. 10. 0. #plus. #setVarTo.
			#stop }