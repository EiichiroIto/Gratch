private
updateStatusForced: aBoolean

	| msec str ticks fps nodes edges numerator denominator |
	msec := Time millisecondClockValue.
	(msec < (lastMSec + 1000) and: [ aBoolean not ]) ifTrue: [ ^ self ].
	presenter updateInspector.
	ticks := grWorld ticks.
	numerator := 1000 * (ticks - lastTicks).
	denominator := msec - lastMSec.
	lastTicks := ticks.
	lastMSec := msec.
	fps := (numerator >= 0 and: [ denominator > 0 ])
		       ifTrue: [ (numerator / denominator) truncated ]
		       ifFalse: [ 0 ].
	nodes := grWorld countAliveOf: GrBreedId nodesBreedNo.
	edges := grWorld countAliveOf: GrBreedId edgesBreedNo.
	str := self
		       stringOfTicks: ticks
		       fps: fps
		       nodes: nodes
		       edges: edges.
	presenter info: str