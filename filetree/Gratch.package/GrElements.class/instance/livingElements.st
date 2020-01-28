microworld
livingElements
	^ (1 to: self size) select: [ :each | self aliveAt: each ]