accessing 8-byte frame header
tags

	^ (frameSpecification at: 1) bitAnd: 16r0F