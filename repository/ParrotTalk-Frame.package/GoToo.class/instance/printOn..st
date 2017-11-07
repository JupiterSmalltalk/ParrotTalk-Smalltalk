initialize-release
printOn: stream

	stream nextPutAll: self class asString.
	stream nextPutAll: '('.
	stream nextPutAll: cryptoProtocol.
	stream nextPutAll: ', '.
	stream nextPutAll: dataEncoder.
	stream nextPutAll: ')'.
