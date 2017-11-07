converting
asAsn1DerBytes

	| type |
	type := (ASN1Module name: #Session) find: #TcpIdentity.
	^ ASN1OutputStream encode: self withType: type.
