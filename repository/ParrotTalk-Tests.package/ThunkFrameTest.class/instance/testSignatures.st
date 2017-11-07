as yet unclassified
testSignatures

	| vatIdentity sig |
	vatIdentity := SessionIdentity sampleVatId1.
	sig := vatIdentity signMessage: 'hello world' asByteArray.
	self assert: (vatIdentity verify: sig isSignatureOf: 'hello world' asByteArray).