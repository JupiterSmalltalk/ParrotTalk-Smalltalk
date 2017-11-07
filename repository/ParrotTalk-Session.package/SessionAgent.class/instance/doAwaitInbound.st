initialize-release
doAwaitInbound

	| socket |
	[
		socket := connectionQueue getConnectionOrNilLenient.
		socket 
			ifNil: [(Delay forMilliseconds: 50) wait]
			ifNotNil: [self newInboundSocket: socket]
	] repeat
