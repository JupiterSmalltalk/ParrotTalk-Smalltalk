accessing 8-byte frame header
priority

	^ ((frameSpecification at: 4) bitAnd: 16r06) bitShift: -1