private
updateInspector
	inspectorTarget ifNil: [ ^ self ].
	inspectorPane
		items:
			(self grWorld
				varsBreed: inspectorTarget first
				at: inspectorTarget second)