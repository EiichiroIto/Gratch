private
addNodeWith: aCollection
	| node |
	node := self newNode.
	aCollection
		do:
			[ :each | self setNode: node atColumn: each first first to: each second ]