protocol startup
processIWant: frame

	securityOps addRemoteFrame: frame.
"	(frame header vatId = self localVatId and: [self isDomainInscope: frame header domain])"
	(self isDomainInscope: frame header domain)
		ifTrue: [self sendIAm]
		ifFalse: [self sendNotMe].
