protocol control
sendProtocolAccepted: accepted

	| msg |
	msg := ProtocolAccepted new.
	msg accepted: accepted.
	msg := msg asFrame.
	securityOps addLocalFrame: msg.
	self privateSendFrame: msg.

	