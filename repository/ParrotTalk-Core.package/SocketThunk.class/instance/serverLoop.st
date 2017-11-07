control
serverLoop
	"I sit in a loop (usually in a background Process) waiting for data to arrive on my underlying connection then pass anything received up to my high protocol.  When #getData answers nil to inform me that my underlying connection has been destroyed I close down the entire endpoint, inform my session of the fact and then exit.  See also ProtocolEndpoint>>run."

	[ [ self getData 
		ifNotNil: [ :bytes | 
			stack
				upcall: (Frame onHeader: RawData new payload: bytes)
				from: self].
	self isConnected ] 
		whileTrue ]
			ensure: [
				serverProcess := nil.
				stack ifNotNil: [ stack shutdown ] ].