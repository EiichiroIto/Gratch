test
testDoOneCycle

	| w p ret |
	w := self newWorld.
	w createNodes: 1.
	p := self newProcess.
	p grWorld: w.
	p := p program: self sampleProgram3.
	p runningEvents: { 4 }.
	ret := p doOneCycle.
	self assert: ret not