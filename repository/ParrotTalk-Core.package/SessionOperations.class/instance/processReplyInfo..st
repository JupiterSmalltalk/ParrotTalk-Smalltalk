protocol startup
processReplyInfo: frame

	securityOps addRemoteFrame: frame.
	self 
		sendGoWithProtocol: (securityOps matchBestProtocol: frame header cryptoProtocols)
		encoder: (securityOps matchBestEncoder: frame header dataEncoders)
		dhParam: securityOps dhParm.
