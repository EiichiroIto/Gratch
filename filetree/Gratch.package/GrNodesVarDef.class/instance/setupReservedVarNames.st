initialization
setupReservedVarNames
	self
		addReserved: 'flag'
		varNo: self class flagVarNo
		className: #ByteArray.
	self
		addReserved: 'color'
		varNo: self class colorVarNo
		className: #ByteArray.
	self
		addReserved: 'name'
		varNo: self class nameVarNo
		className: #StringArray.
	self addReservedVariable: 'x' varNo: self class xVarNo.
	self addReservedVariable: 'y' varNo: self class yVarNo.
	self setupVarNames