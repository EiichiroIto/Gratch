private
writeNode: anInteger
	nodeColumns
		do: [ :each | self writeNode: anInteger atColumn: each ]
		separatedBy: [ stream nextPut: $, ]