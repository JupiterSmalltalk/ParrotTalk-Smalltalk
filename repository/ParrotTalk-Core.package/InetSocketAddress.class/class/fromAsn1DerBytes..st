asn1der
fromAsn1DerBytes: bytes

	| type |
	type := (ASN1Module name: #Session) find: #TcpIdentity.
	^ ASN1InputStream decodeBytes: bytes withType: type.
