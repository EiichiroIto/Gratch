private
newFolder

	| name |
	name := SpScratchApp request: 'New folder name:' localized.
	(name isNil or: [ name isEmpty ]) ifTrue: [ ^ self ].
	[ (directory / name) createDirectory ]
		on: Error
		do: [ :err :rcvr | 
			^ SpScratchApp alert: 'Could not create folder!' localized ].
	self directory: directory / name