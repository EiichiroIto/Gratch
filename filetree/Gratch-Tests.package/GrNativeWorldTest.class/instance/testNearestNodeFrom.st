test
testNearestNodeFrom
	| w ret |
	w := self newWorld.
	w createNodes: 4.
	w pointAt: 1 put: 0 @ 0.
	w pointAt: 2 put: 1 @ 1.
	w pointAt: 3 put: 2 @ 2.
	w pointAt: 4 put: 4 @ 4.
	ret := w nearestNodeFrom: 1.
	self assert: ret equals: 2.
	ret := w nearestNodeFrom: 4.
	self assert: ret equals: 3.