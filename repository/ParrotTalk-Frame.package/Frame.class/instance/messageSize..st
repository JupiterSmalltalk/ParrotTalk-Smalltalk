accessing 8-byte frame header
messageSize: size

	frameSpecification replaceFrom: 5 to: 8 with: size sizeAsFourBytes