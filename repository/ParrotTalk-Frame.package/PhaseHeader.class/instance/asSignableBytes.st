conversion
asSignableBytes

	| stream |
	stream := #[] writeStream.
	self storeAsn1DerBytesOn: stream.
	^ stream contents.
