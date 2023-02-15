test
testIsStartupHatBlock

	| obj |
	obj := self newObj.
	self deny: obj isStartupHatBlock.
	obj type: #T.
	self assert: obj isStartupHatBlock.
	#( C E K M S L G c b r s t - ) do: [ :each | 
		obj type: each.
		self deny: obj isStartupHatBlock ]