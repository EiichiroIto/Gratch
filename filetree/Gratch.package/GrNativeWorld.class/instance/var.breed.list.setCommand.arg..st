accessing variable
var: vno breed: bno list: id setCommand: cno arg: anInteger
	| list |
	list := nil.
	cno = GrCommandId allNodesCommandNo
		ifTrue: [ list := self allNodes ].
	cno = GrCommandId allEdgesCommandNo
		ifTrue: [ list := self allEdges ].
	cno = GrCommandId adjacentNodesCommandNo
		ifTrue: [ list := self adjacentNodesTo: anInteger ].
	cno = GrCommandId clearListCommandNo
		ifTrue: [ list := #() ].
	list ifNil: [ self error ].
	(self breedOf: bno) var: vno list: id set: list