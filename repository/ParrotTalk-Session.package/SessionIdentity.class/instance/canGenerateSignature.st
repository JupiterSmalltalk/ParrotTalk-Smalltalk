testing
canGenerateSignature

	^ self privateKey notNil 
		and: [self publicKey notNil 
		and: [self vatId notNil]]