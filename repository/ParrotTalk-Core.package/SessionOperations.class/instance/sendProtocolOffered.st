protocol control
sendProtocolOffered

	| msg |
	msg := ProtocolOffered new.
	msg offered: 'ParrotTalk-3.6'.
	msg preferred: 'ParrotTalk-3.6'.
	msg := msg asFrame.
	securityOps addLocalFrame: msg.
	self privateSendFrame: msg.
