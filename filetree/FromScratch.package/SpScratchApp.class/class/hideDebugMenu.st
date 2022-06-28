settings
hideDebugMenu
	^ self settings at: #hideDebugMenu ifAbsentPut: [ false ]