private
writeEdge: anInteger
	edgeColumns
		do: [ :each | self writeEdge: anInteger atColumn: each ]
		separatedBy: [ stream nextPut: $, ]