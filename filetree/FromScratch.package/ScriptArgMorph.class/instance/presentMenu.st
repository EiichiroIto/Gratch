private
presentMenu

	"Let the user select a Scratch object or the special value #mouse."

	| project objList tmp |
	project := self project.
	project ifNil: [ ^ self ].
	objList := project scriptsForMenu.
	objList sort: [ :obj1 :obj2 | 
		obj1 objName asLowercase < obj2 objName asLowercase ].
	tmp := SpSelectDialog new
		       label: 'Select one' localized;
		       items: objList;
		       display: [ :each | each objName ];
		       openModal.
	tmp ifNil: [ ^ self ].
	selectedScript := tmp.
	self updateLabel