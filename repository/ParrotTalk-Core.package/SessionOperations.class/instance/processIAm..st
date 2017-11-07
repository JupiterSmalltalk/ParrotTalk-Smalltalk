protocol startup
processIAm: frame

	securityOps addRemoteFrame: frame.

	self remotePublicKey: frame header publicKey.

"	(frame header vatId = self remoteVatId and: [self isDomainInscope: frame header domain])"
	(self isDomainInscope: frame header domain)
		ifFalse: [^ self startupFailed: 'authorization failure'].

	self sendGiveInfo.
