printing
printOn: aStream
	aStream
		nextPutAll: 'State: ';
		nextPutAll: stateName asString