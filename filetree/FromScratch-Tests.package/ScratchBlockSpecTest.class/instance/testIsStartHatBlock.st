test
testIsStartHatBlock

	| obj |
	obj := self newObj.
	self deny: obj isStartHatBlock.
	obj type: #G.
	self assert: obj isStartHatBlock.
	#( C E K M S T L c b r s t - ) do: [ :each | 
		obj type: each.
		self deny: obj isStartHatBlock ]