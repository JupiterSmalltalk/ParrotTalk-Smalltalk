initialize-release
printOn: stream

	stream nextPutAll: 'a Frame(';
		nextPutAll: header asString;
		nextPutAll: ' - ';
		nextPutAll: self payloadSize asString;
		nextPutAll: ' payload size)'.