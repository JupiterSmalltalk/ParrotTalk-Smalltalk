accessing 8-byte frame header
hash: hash

	frameSpecification at: 2 put: (((frameSpecification at: 2) bitAnd: 16rCF) bitOr: ((hash bitAnd: 16r03) bitShift: 6)).
	frameSpecification at: 3 put: ((hash bitAnd: 16rFFC) bitShift: -2).
