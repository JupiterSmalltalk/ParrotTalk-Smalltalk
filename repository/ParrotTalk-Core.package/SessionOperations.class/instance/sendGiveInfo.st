protocol startup
sendGiveInfo

	| msg |
	msg := GiveInfo new
		vatId: self localVatId;
		publicKey: self localPublicKey;
		asFrame.
	securityOps addLocalFrame: msg.
	self privateSendFrame: msg.
