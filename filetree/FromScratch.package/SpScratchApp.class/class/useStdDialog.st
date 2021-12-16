accessing
useStdDialog
	^ self settings at: #useStdDialog ifAbsent: [ false ]