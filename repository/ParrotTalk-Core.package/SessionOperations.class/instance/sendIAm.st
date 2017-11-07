protocol startup
sendIAm

	| msg |
	msg := IAm new
		vatId: self localVatId;
		publicKey: self localPublicKey;
		asFrame.
	securityOps addLocalFrame: msg.
	self privateSendFrame: msg.
