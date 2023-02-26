accessing
livingOnes

	^ (1 to: self size) select: [ :each | self aliveAt: each ]