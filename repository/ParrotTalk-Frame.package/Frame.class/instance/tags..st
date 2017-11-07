accessing 8-byte frame header
tags: tags

	frameSpecification at: 1 put: (((frameSpecification at: 1) bitAnd: 16rF0) bitOr: (tags bitAnd: 16r0F)).
