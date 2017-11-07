as yet unclassified
testFrames

	[

			Frame readFrom: (ProtocolOffered new
				offered: '';
				preferred: '';
				asFrame) asByteArray readStream.

			Frame readFrom: (ProtocolAccepted new
				accepted: '';
				asFrame) asByteArray readStream.

			Frame readFrom: (IWant new
				vatId: SessionIdentity sampleVatId1 vatId;
				domain: 'rockabilly';
				asFrame) asByteArray readStream.

			Frame readFrom: (IAm new
				vatId: SessionIdentity sampleVatId1 vatId;
				domain: 'rockabilly';
				publicKey: SessionIdentity sampleVatId1 publicKey;
				asFrame) asByteArray readStream.

			Frame readFrom: (GiveInfo new
				vatId: SessionIdentity sampleVatId1 vatId;
				publicKey: SessionIdentity sampleVatId1 publicKey;
				asFrame) asByteArray readStream.

			Frame readFrom: (ReplyInfo new
				cryptoProtocols: '';
				dataEncoders: '';
				asFrame) asByteArray readStream.

			Frame readFrom: (Go new
				cryptoProtocol: 'rockabilly';
				dataEncoder: 'rockabilly';
				diffieHellmanParameter: '' asByteArray;
				signature: '' asByteArray;
				asFrame) asByteArray readStream.

			Frame readFrom: (GoToo new
				cryptoProtocol: 'rockabilly';
				dataEncoder: 'rockabilly';
				diffieHellmanParameter: '' asByteArray;
				signature: '' asByteArray;
				asFrame) asByteArray readStream.

			NotMe new asFrame.
			DuplicateConnection new asFrame
		] on: Exception do: [ :ex | self assert: false ].