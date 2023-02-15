test
testIsReporterBlock

	| obj |
	obj := self newObj.
	self deny: obj isReporterBlock.
	obj type: #b.
	self assert: obj isReporterBlock.
	obj type: #r.
	self assert: obj isReporterBlock.
	#( C E K M S T L G c s t - ) do: [ :each | 
		obj type: each.
		self deny: obj isReporterBlock ]