protocol startup
sendReplyInfo

	| msg |
	msg := ReplyInfo new
		cryptoProtocols: securityOps portalMap cryptoProtocolNames;
		dataEncoders: securityOps portalMap dataEncoderNames;
		asFrame.
	securityOps addLocalFrame: msg.
	self privateSendFrame: msg.
