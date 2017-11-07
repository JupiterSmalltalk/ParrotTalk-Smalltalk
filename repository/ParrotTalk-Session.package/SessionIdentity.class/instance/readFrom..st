converting
readFrom: stream

	vatId := stream nextUtfString asByteArray asString.
	publicKey := (RSAPublicKey fromAsn1DerBytes: stream nextUtfString asByteArray readStream).
	privateKey := (RSAPrivateKey fromAsn1DerBytes: stream nextUtfString asByteArray readStream).
	self socketAddress: (InetSocketAddress fromString: stream nextUtfString asByteArray asString).
	self nickname: stream nextUtfString.