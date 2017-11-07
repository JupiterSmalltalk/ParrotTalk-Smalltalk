binding
calculateVatId

	(self vatId isNil or: [self vatId = '<unknown>'])
		ifTrue: [self vatId: (SecurityOps base64EncodedCryptoHash: publicKey)].
	(self nickname isNil or: [self nickname = '<unknown>'])
		ifTrue: [self nickname: self vatId].
