protocol startup
processGoToo: frame

	|  sig |
	sig := frame header takeSignature.
	securityOps addRemoteFrame: frame.
	(securityOps authenticateSignature: sig withKey: self farKey)
		ifFalse: [ CryptographyError signal: 'signature authentication failed' ].
	securityOps processDhParm: frame header diffieHellmanParameter.
	self startupSuccessful: false.
