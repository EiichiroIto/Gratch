test
testChangeVarBy
	| g |
	g := self newGenerator.
	g changeVar: 5 by: 10.
	self
		assertCollection: g code
		equals:
			{#pushShort . 5 . 0 . #dup . #getVar . #pushShort . 10 . 0 . #plus.
			#setVarTo . #stop}