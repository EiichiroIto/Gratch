private
writeHeader: aProject
	| world writer ret |
	world := aProject application grWorld.
	writer := GrGdfWriter new.
	writer
		edgeColumns: writer edgeColumns , world edges userDefinedVarNames.
	ret := writer exportFrom: world.
	stream nextPutAll: ret