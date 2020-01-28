microworld
withLivingOnesSelect: aBlock
	^ (1 to: self size)
		select:
			[ :each | (self aliveAt: each) and: [ aBlock value: each value: self ] ]