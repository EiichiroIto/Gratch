test
testWithinRadiusFrom
	| w ret |
	w := self newWorld.
	w createNodes: 4.
	w pointAt: 1 put: 0 @ 0.
	w pointAt: 2 put: 1 @ 1.
	w pointAt: 3 put: 2 @ 2.
	w pointAt: 4 put: 4 @ 4.
	ret := w withinRadius: 1.5 from: 1.
	self assert: ret equals: 2.
	10
		timesRepeat: [ ret := w withinRadius: 1.5 from: 2.
			self assert: (#(1 3) includes: ret) ]