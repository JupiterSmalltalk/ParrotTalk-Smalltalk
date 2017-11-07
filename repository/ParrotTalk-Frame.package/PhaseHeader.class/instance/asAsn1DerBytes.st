conversion
asAsn1DerBytes

	| stream |
	stream := #[] writeStream.
	self storeAsn1DerBytesOn: stream.
	^ stream contents.
