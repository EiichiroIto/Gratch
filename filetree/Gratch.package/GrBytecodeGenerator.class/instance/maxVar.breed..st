sensing ops
maxVar: vno breed: bno
	self appendValue: vno.
	self appendValue: bno.
	self appendSymbol: #maxElement.
	^ nil