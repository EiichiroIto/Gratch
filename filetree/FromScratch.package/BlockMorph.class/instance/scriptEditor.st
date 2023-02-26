accessing
scriptEditor
	owner ifNil: [ ^ nil ].
	owner isBlockPalette ifTrue: [ ^ nil ].
	owner isScriptEditor ifTrue: [ ^ owner ].
	^ owner scriptEditor