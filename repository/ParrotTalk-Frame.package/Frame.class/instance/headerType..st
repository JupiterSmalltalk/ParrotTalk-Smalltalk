accessing 8-byte frame header
headerType: headerType

	frameSpecification at: 4 put: (((frameSpecification at: 4) bitAnd: 16r07) bitOr: ((headerType bitAnd: 16r1F) bitShift: 3)).