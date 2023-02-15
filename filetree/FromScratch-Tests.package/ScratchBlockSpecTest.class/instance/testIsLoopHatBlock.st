test
testIsLoopHatBlock

	| obj |
	obj := self newObj.
	self deny: obj isLoopHatBlock.
	obj type: #L.
	self assert: obj isLoopHatBlock.
	#( C E K M S T G c b r s t - ) do: [ :each | 
		obj type: each.
		self deny: obj isLoopHatBlock ]