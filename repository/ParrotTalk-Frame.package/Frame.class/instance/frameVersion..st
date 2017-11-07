accessing 8-byte frame header
frameVersion: version

	^ frameSpecification at: 4 put: (((frameSpecification at: 4) bitAnd: 16rFE) bitOr: (version bitAnd: 16r01)).
