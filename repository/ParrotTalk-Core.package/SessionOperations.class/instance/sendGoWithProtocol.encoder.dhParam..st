protocol startup
sendGoWithProtocol: protocol encoder: encoder dhParam: dhParam

	| msg |
	securityOps portalMap selectedProtocolName: protocol; selectedEncoderName: encoder.
	msg := Go new
		cryptoProtocol: protocol;
		dataEncoder: encoder;
		diffieHellmanParameter: dhParam;
		asFrame.
	securityOps addLocalFrame: msg.
	msg header signature: (securityOps generateSignatureWithKey: self nearKey).
	self privateSendFrame: msg.
