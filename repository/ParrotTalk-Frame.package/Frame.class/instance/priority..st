accessing 8-byte frame header
priority: priority

	frameSpecification at: 4 put: (((frameSpecification at: 4) bitAnd: 16rF9) bitOr: ((priority bitAnd: 16r03) bitShift: 1)).