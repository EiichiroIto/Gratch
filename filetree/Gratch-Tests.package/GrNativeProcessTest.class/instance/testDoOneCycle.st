test
testDoOneCycle
	| w p ret |
	w := self newWorld.
	w createNodes: 1.
	p := w newProcess program: self sampleProgram3.
	p privRunningEvents: {4}.
	ret := p doOneCycle.
	self assert: ret not.