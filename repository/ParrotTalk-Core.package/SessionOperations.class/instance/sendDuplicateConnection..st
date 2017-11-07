protocol control
sendDuplicateConnection: reason

	| msg |
	msg := DuplicateConnection new asFrame.
	self privateSendFrame: msg.
	session shutdown.

