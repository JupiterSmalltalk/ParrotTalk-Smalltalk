private - making
makeCipherThunk: stack incoming: incoming

	^ portalMap buildProtocol
		makeThunkOn: { diffieHellman sharedKeyPadPositiveByteArray }
		incoming: incoming.