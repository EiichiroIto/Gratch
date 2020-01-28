private
importLine: aString
	state
		ifNil: [ 
			(aString beginsWith: 'nodedef>')
				ifTrue: [ 
					state := #node.
					columns := self parseDef: (aString copyFrom: 9 to: aString size).
					^ self setupNodeVarDefFrom: columns ] ].
	state = #node
		ifTrue: [ 
			(aString beginsWith: 'edgedef>')
				ifTrue: [ 
					state := #edge.
					columns := self parseDef: (aString copyFrom: 9 to: aString size).
					^ self setupEdgeVarDefFrom: columns ]
				ifFalse: [ self addNodeWith: (self parseData: aString) ] ].
	state = #edge
		ifTrue: [ self addEdgeWith: (self parseData: aString) ]