private
stringOfTicks: ticks fps: fps nodes: anInteger3 edges: anInteger4
	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: ticks truncated asString;
		nextPutAll: ' ticks, ';
		nextPutAll: fps asString;
		nextPutAll: ' fps, ';
		nextPutAll: anInteger3 asString;
		nextPutAll: ' nodes, ';
		nextPutAll: anInteger4 asString;
		nextPutAll: ' edges'.
	^ stream contents