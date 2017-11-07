protocol startup
processGo: frame

	|  sig dhParam |
	sig := frame header takeSignature.
	dhParam := securityOps dhParm.
	securityOps addRemoteFrame: frame.
	(securityOps authenticateSignature: sig withKey: self farKey)
		ifFalse: [ CryptographyError signal: 'signature authentication failed' ].
	securityOps processDhParm: frame header diffieHellmanParameter.

	self
		sendGoTooWithProtocol: (securityOps matchBestProtocol: frame header cryptoProtocols)
		encoder: (securityOps matchBestEncoder: frame header dataEncoders)
		dhParam: dhParam.
	self startupSuccessful: true.
