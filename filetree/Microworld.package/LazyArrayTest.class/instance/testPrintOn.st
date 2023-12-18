test
testPrintOn
	| a st |
	a := self newArray: #Float32Array.
	st := WriteStream on: ''.
	a printOn: st.
	self assert: st contents equals: 'LazyArray(Float32Array,0)'.
	a at: 3 put: 10.
	st := WriteStream on: ''.
	a printOn: st.
	self assert: st contents equals: 'LazyArray(Float32Array,100)'.
	a forceSize: 10.
	st := WriteStream on: ''.
	a printOn: st.
	self assert: st contents equals: 'LazyArray(Float32Array,*10)'.