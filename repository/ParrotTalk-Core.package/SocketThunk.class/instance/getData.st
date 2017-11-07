protocol
getData

	| count buffer |
	buffer := ByteArray new: 12288 withAll: 0.
	Processor yield.
	[ socket dataAvailable
		ifTrue: [
			[ count := socket receiveDataInto: buffer ] on: Exception do: [:ex | ex pass].
			 ^buffer copyFrom: 1 to: count]
		ifFalse: [ [ [ [ socket waitForDataFor: 1 ]
				on: primitiveFailedError do: [:ex | socket isConnected ifTrue: [ex pass] ] ]
				on: NetworkError do: [:ex | ] ]
				on: SocketPrimitiveFailed do: [:ex | socket isConnected ifTrue: [ex pass] ] ].
	socket isConnected] whileTrue.
	^nil