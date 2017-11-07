connect
newInboundSocket: socket

	| conn bone farKey |
	farKey := SessionIdentity
		newOnAddress: socket remoteAddress 
		port: socket remotePort.
	bone := SocketThunk newSocket: socket.
	conn := Session
		onSource: bone 
		farKey: farKey 
		portal: self.
	conn answer.