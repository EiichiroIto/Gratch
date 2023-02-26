accessing
target: aScript

	super target: aScript.
	self selectButton: aScript objName.
	self graphForm: (self stageShotExtent: 40 @ 40).
	inspectorPane selectIndex: 0