menu actions
addSubBlock: aPoint script: aScript

	| subName |
	subName := presenter request: 'Sub name?' localized.
	subName := self normalizeModuleName: subName.
	(subName isNil or: [ subName isEmpty ]) ifTrue: [ ^ self ].
	(aScript isValidSubName: subName) ifFalse: [ 
		^ presenter alert: 'invalid sub name!' localized ].
	(aScript subNameInUse: subName) ifTrue: [ 
		^ presenter alert: 'That sub name is already in use!' localized ].
	aScript addSubBlock: aPoint name: subName