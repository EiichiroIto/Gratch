test
testParseColor
	| r ret |
	r := GrGdfReader new.
	ret := r parseColor: '255,255,255'.
	self assert: ret equals: ColorList white.
	ret := r parseColor: '0,0,0'.
	self assert: ret equals: ColorList black.
	ret := r parseColor: '255,0,0'.
	self assert: ret equals: ColorList red.
	ret := r parseColor: '0,255,0'.
	self assert: ret equals: ColorList green.
	ret := r parseColor: '0,0,255'.
	self assert: ret equals: ColorList blue.