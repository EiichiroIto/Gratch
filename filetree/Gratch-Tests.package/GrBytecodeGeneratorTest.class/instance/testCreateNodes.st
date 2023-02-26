test
testCreateNodes
	| g |
	g := self newGenerator.
	g createNodes: (self literalValue: 5).
	self
		assertCollection: g code
		equals:
			{#pushShort.
			5.
			0.
			#createNodes.
			#stop}