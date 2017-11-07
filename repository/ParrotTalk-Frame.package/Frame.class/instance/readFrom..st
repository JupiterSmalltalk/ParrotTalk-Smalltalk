conversion
readFrom: stream

"	msgSpec := MessageSpecification forFrame: self withEightBytes: (stream next: 8).
	header := msgSpec headerFromStream: stream.
	self setSpecificationDetails.
	payload := stream next: msgSpec payloadSize."

	frameSpecification := stream next: self specificationSize.
	self readRemainderFrom: stream.