accessing 8-byte frame header
hash

	| highOrder lowOrder |
	lowOrder := ((frameSpecification at: 2) bitAnd: 16rC0) bitShift: -6.
	highOrder := ((frameSpecification at: 3) bitAnd: 16rFF) bitShift: 2.
	^ lowOrder bitOr: highOrder