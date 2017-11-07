asn1der
fromAsn1DerBytes: bytes

	^ self readFrom: bytes readStream.
