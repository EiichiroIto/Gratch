accessing variable
withElementsDo: aBlock
	(1 to: self size) do: [ :each | aBlock value: each value: self ]