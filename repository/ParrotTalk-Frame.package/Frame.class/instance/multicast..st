accessing 8-byte frame header
multicast: multicast

	frameSpecification at: 1 put: (((frameSpecification at: 1) bitAnd: 16r0F) bitOr: ((multicast bitAnd: 16r0F) bitShift: 4)).
	frameSpecification at: 2 put: (((frameSpecification at: 2) bitAnd: 16rC0) bitOr: ((multicast bitAnd: 16r3F0) bitShift: -4)).
