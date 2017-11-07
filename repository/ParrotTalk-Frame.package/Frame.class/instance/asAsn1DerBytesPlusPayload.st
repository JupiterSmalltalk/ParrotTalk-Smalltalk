conversion
asAsn1DerBytesPlusPayload

	| stream |
	stream := #[] writeStream.
	stream nextPutAll: self asAsn1DerBytes.
	stream nextPutAll: self payload.
	^ stream contents.
