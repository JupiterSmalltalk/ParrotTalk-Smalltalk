instance creation
readFrom: stream	

	^ (self onFrameSpecification: (stream next: self specificationSize))
		readRemainderFrom: stream