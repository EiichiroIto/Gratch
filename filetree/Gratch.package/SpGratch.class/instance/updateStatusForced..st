private
updateStatusForced: aBoolean
	| msec str ticks fps nodes edges |
	msec := Time millisecondClockValue.
	(msec < (lastMSec + 1000) and: [ aBoolean not ])
		ifTrue: [ ^ self ].
	presenter updateInspector.
	ticks := grWorld ticks.
	fps := ((ticks - lastTicks) * 1000 / (msec - lastMSec)) truncated.
	nodes := grWorld countAliveOf: GrBreedId nodesBreedNo.
	edges := grWorld countAliveOf: GrBreedId edgesBreedNo.
	str := self stringOfTicks: ticks fps: fps nodes: nodes edges: edges.
	presenter info: str.
	lastTicks := ticks.
	lastMSec := msec