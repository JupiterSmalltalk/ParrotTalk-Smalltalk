accessing 8-byte frame header
multicast

	| highOrder lowOrder |
	lowOrder := ((frameSpecification at: 1) bitAnd: 16rF0) bitShift: -4.
	highOrder := ((frameSpecification at: 2) bitAnd: 16r3F) bitShift: 4.
	^ lowOrder bitOr: highOrder