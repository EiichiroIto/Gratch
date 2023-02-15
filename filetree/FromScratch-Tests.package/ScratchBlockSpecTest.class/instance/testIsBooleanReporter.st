test
testIsBooleanReporter

	| obj |
	obj := self newObj.
	self deny: obj isBooleanReporter.
	obj type: #b.
	self assert: obj isBooleanReporter.
	#( C E K M S T L G c r s t - ) do: [ :each | 
		obj type: each.
		self deny: obj isBooleanReporter ]