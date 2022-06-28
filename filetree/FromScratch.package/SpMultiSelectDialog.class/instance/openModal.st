api - showing
openModal
	| dialog |
	
	dialog := super openModal.
	^ dialog isOk
		ifTrue: [ self selectedItems ]
		ifFalse: [ nil ]