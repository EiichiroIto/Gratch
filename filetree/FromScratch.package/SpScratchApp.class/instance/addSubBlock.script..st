menu actions
addSubBlock: aPoint script: aScript

	| subName |
	subName := self request: 'Sub name?' localized.
	subName := self normalizeModuleName: subName.
	(subName isNil or: [ subName isEmpty ]) ifTrue: [ ^ self ].
	(aScript isValidSubName: subName) ifFalse: [ 
		^ self alert: 'invalid sub name!' localized ].
	(aScript subNameInUse: subName) ifTrue: [ 
		^ self alert: 'That sub name is already in use!' localized ].
	aScript addSubBlock: aPoint name: subName