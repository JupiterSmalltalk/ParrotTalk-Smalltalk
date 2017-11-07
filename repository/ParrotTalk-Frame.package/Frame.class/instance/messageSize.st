accessing 8-byte frame header
messageSize

	^ (frameSpecification copyFrom: 5 to: 8) asInteger