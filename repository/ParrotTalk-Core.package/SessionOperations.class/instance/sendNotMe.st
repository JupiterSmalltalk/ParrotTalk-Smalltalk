protocol control
sendNotMe

	| msg |
	msg := NotMe new asFrame.
	self privateSendFrame: msg.
	session shutdown.