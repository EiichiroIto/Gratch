accessing
target: aScript

	viewerPane target: aScript.
	editorPane morph contents: aScript blocksBin.
	self selectButton: aScript objName.
	self graphForm: (self stageShotExtent: 40 @ 40).
	inspectorPane selectIndex: 0