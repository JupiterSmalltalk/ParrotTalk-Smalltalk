initialize-release
printOn: stream

	stream nextPutAll: self class asString.
	stream nextPutAll: '('.
	stream nextPutAll: self buildOverWireProtocols.
	stream nextPutAll: ', '.
	stream nextPutAll: self buildOverWireEncoders.
	stream nextPutAll: ')'.
