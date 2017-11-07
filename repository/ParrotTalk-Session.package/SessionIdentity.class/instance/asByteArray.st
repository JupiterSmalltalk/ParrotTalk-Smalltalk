converting
asByteArray

	| stream |
	stream := #[] writeStream.
	self writeTo: stream.
	^ stream contents.
