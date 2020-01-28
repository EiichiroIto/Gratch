sensing ops
minVar: vno breed: bno
	self appendValue: vno.
	self appendValue: bno.
	self appendSymbol: #minElement.
	^ nil