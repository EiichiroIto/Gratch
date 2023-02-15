test
testIsCommandBlock

	| obj |
	obj := self newObj.
	self deny: obj isCommandBlock.
	obj type: #-.
	self assert: obj isCommandBlock.
	#( C E K M S T L G c b r s t ) do: [ :each | 
		obj type: each.
		self deny: obj isCommandBlock ]