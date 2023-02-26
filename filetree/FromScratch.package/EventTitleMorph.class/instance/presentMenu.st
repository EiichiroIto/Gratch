event handling
presentMenu

	"Pop up a menu of choices."

	| eventNames list choice |
	eventNames := { ('new' localized , ScratchTranslator ellipsesSuffix) }.
	self project ifNotNil: [ :project | 
		eventNames := eventNames , project allEventNames ].
	list := eventNames withIndexCollect: [ :each :i | 
		        Array with: each with: i ].
	choice := SpSelectDialog new
		          label: 'Select Message name' localized;
		          items: list;
		          display: [ :each | each first ];
		          openModal.
	choice ifNil: [ ^ self ].
	choice second = 1
		ifTrue: [ 
			choice := SpScratchPresenter request: 'Message name:' localized.
			(choice isNil or: [ choice isEmpty ]) ifTrue: [ ^ self ] ]
		ifFalse: [ choice := choice first ].
	self eventName: choice