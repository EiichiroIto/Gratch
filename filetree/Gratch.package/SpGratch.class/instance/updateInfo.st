processes
updateInfo
	| msec ticks fps info ns es |
	self updateStatus.
	msec := Time millisecondClockValue.
	ticks := grWorld ticks.
	lastMSec
		ifNotNil: [ fps := ((ticks - lastTicks) * 1000 / (msec - lastMSec)) truncated.
			info := 'ticks=' , ticks truncated asString , ' (' , fps asString
				, 'fps)'.
			ns := grWorld countAliveOf: GrBreedId nodesBreedNo.
			es := grWorld countAliveOf: GrBreedId edgesBreedNo.
			info := info , ' nodes=' , ns asString , ' edges=' , es asString.
			presenter info: info ].
	lastMSec := msec.
	lastTicks := ticks