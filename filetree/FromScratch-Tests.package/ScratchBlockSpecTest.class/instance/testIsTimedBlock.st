test
testIsTimedBlock

	| obj |
	obj := self newObj.
	self deny: obj isTimedBlock.
	obj type: #t.
	self assert: obj isTimedBlock.
	#( C E K M S T L G b c r s - ) do: [ :each | 
		obj type: each.
		self deny: obj isTimedBlock ]