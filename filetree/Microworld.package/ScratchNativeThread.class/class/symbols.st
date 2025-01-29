private
symbols
	| list |
	list := self allMethods.
	list := list select: [ :each | each protocolName endsWith: 'ops' ].
	list := list collect: #selector.
	^ list sort