accessing
target: aScript
	super target: aScript.
	libraryPane selectButton: aScript objName.
	libraryPane graphForm: (self stageShotExtent: 40 @ 40)