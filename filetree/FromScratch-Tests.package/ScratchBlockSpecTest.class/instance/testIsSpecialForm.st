test
testIsSpecialForm

	| obj |
	obj := self newObj.
	self deny: obj isSpecialForm.
	obj type: #s.
	self assert: obj isSpecialForm.
	#( C E K M S T L G b c r t - ) do: [ :each | 
		obj type: each.
		self deny: obj isSpecialForm ]