private
setupColumnType
	"self setupColumnType"
	ColumnType := Dictionary new.
	#(#(node1 'VARCHAR') #(node2 'VARCHAR') #(directed 'BOOLEAN') #(label 'VARCHAR') #(color 'VARCHAR'))
		do: [ :each | ColumnType at: each first put: each second ].
	#(#(name 'VARCHAR') #(label 'VARCHAR') #(width 'DOUBLE') #(height 'DOUBLE') #(x 'DOUBLE') #(y 'DOUBLE') #(color 'VARCHAR'))
		do: [ :each | ColumnType at: each first put: each second ]