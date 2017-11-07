protocol
close

	socket notNil ifTrue: [[socket closeAndDestroy: 10] on: SocketPrimitiveFailed do: [:e | ] ].
	serverProcess isNil
		ifFalse:
			[serverProcess terminate.
			 serverProcess := nil].
	super close.