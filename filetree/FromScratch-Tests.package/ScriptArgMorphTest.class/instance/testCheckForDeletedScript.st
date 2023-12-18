test
testCheckForDeletedScript

	| morph project script block |
	morph := self newArgMorph.
	project := self newProject.
	script := self newScript.
	script objName: 'abc'.
	block := ScTestBlock new project: project.
	morph privateOwner: block.
	morph defaultValue: script.
	self assert: morph selectedScript identicalTo: script.
	morph checkForDeletedScript.
	self assert: morph selectedScript isNil.
	project addScript: script.
	morph defaultValue: script.
	morph checkForDeletedScript.
	self assert: morph selectedScript identicalTo: script.
	morph defaultValue: 'def'.
	morph checkForDeletedScript.
	self assert: morph selectedScript isNil.
	morph defaultValue: 'abc'.
	morph checkForDeletedScript.
	self assert: morph selectedScript identicalTo: script