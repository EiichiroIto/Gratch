microworld
livingOnesDo: aBlock
	1 to: self size do: [ :each | 
		(self aliveAt: each)
			ifTrue: [ aBlock value: each ] ]