accessing
asPublicIdentity

	^ self class basicNew
		socketAddress: self socketAddress deepCopy;
		setupOnPublicKey: self publicKey deepCopy;
		yourself
