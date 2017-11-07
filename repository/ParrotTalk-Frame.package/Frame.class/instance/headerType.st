accessing 8-byte frame header
headerType

	^ ((frameSpecification at: 4) bitAnd: 16rF8) bitShift: -3.
