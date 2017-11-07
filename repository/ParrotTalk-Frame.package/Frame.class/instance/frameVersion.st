accessing 8-byte frame header
frameVersion

	^ (frameSpecification at: 4) bitAnd: 16r01.
