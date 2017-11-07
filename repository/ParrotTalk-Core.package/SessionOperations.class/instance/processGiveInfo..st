protocol startup
processGiveInfo: frame

	securityOps addRemoteFrame: frame.

	self remoteVatId: frame header vatId.
	self remotePublicKey: frame header publicKey.

	self sendReplyInfo.