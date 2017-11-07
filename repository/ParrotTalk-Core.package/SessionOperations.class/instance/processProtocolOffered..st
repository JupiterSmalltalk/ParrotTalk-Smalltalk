protocol control
processProtocolOffered: frame

	securityOps addRemoteFrame: frame.
	self sendProtocolAccepted: frame header preferred.