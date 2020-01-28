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
		addReserved: 'n1'
		varNo: self class n1VarNo
		className: #IntegerArray.
	self
		addReserved: 'n2'
		varNo: self class n2VarNo
		className: #IntegerArray.
	self setupVarNames