converting
writeTo: stream

	stream nextUtfStringPut: self vatId.
	stream nextUtfStringPut: self publicKey asAsn1DerBytes.
	stream nextUtfStringPut: self privateKey asAsn1DerBytes.
	stream nextUtfStringPut: self socketAddress asString.
	stream nextUtfStringPut: self nickname.
