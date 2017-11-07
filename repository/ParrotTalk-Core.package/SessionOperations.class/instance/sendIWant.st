protocol startup
sendIWant

	| msg |
	msg := IWant new
		vatId: self remoteVatId;
		domain: '';
		asFrame.
	securityOps addLocalFrame: msg.
	self privateSendFrame: msg.
