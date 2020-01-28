*Gratch
keyPressed: asciiValue
	KeyState ifNil: [ self startRecodeKeyState ].
	^ KeyState at: (asciiValue bitAnd: 255) + 1