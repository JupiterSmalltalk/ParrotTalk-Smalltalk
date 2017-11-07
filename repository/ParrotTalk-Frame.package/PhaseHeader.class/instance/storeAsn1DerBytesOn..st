conversion
storeAsn1DerBytesOn: stream

	| type |
	type := (ASN1Module name: #Session) find: #PhaseHeader.
	stream nextPutAll: (ASN1OutputStream encode: self withType: type).
