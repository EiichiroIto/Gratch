test
testIsEventHatBlock

	| obj |
	obj := self newObj.
	self deny: obj isEventHatBlock.
	obj type: #E.
	self assert: obj isEventHatBlock.
	#( C K M S T L G c b r s t - ) do: [ :each | 
		obj type: each.
		self deny: obj isEventHatBlock ]