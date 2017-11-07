compiling
base64EncodedCryptoHash: object

	| encoded hash bytes |
	bytes := object asAsn1DerBytes.
	((bytes first bitAnd: 16r80) > 0)
		ifTrue: [encoded := #(0) asByteArray, bytes]
		ifFalse: [encoded := bytes].
	hash := (SHA1 hashMessage: encoded) asByteArray.
	((hash first bitAnd: 16r80) > 0)
		ifTrue: [hash := #(0) asByteArray, hash].
	^ hash base64Encoded
