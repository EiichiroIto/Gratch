test
testIdle
	| p |
	p := self newWorld newProcess program: GrProgram new.
	p idle.