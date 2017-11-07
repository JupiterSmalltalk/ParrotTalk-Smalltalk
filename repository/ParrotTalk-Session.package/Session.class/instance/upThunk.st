thunk - accessing
upThunk

	^ [:f | [self triggerEvent: #dataReceived with: f payload] forkAt: (f priority * 10 + 30)].