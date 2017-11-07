action
matchBestProtocol: otherProtocols

	^ portalMap cryptoProtocolNames
		detect: [:each | otherProtocols includes: each]
		ifNone: [''].
