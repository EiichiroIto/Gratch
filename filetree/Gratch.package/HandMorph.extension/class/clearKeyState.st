*Gratch
clearKeyState
	KeyState ifNotNil: [ KeyState := Array new: 256 withAll: false ]