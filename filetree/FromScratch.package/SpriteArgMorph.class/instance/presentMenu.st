event handling
presentMenu

	"Let the user select a Scratch object or the special value #mouse."

	| project objList ret |
	project := self project.
	project ifNil: [ ^ self ].
	objList := project scriptsForMenu.
	objList sort: [ :obj1 :obj2 | 
		obj1 objName asLowercase < obj2 objName asLowercase ].
	morph := SpSelectDialog new
		         label: 'Select one' localized;
		         items: objList;
		         display: [ :each | each objName ];
		         openModal.
	morph ifNil: [ ^ self ].
	self updateLabel