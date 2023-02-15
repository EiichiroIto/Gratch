block building
addGenericVariableBlocksTo: page x: x y: startY

	"Add the generic variable blocks to the given page starting at the given y offset. Answer the new y."

	| y vName varBlocks |
	y := startY.

	"pick a default variable name"
	self varNames isEmpty ifTrue: [ ^ y ].
	vName := self varNames first.
	varBlocks := OrderedCollection new
		             add: (blockMorphBuilder setVarBlockFor: vName);
		             add: (blockMorphBuilder changeVarBlockFor: vName);
		             yourself.
	(blockMorphBuilder blocksFor: 'variables') do: [ :b | 
		b defaultArgs: (Array with: vName).
		varBlocks add: b ].
	varBlocks do: [ :b | 
		page addMorph: (b position: x @ y).
		y := b bottom + 3 ].
	^ y