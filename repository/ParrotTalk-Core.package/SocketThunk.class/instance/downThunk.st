thunk - accessing
downThunk

	^ [:frame |
		socket isConnected
			ifTrue: [	socket sendData: frame payload. frame]
			ifFalse: [socket closeAndDestroy. nil] ].
