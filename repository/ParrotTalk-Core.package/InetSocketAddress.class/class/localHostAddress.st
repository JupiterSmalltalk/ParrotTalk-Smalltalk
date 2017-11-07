utility
localHostAddress

	| addr |
	addr := NetNameResolver localHostAddress.
	addr = #(0 0 0 0) asByteArray
		ifTrue: [addr := #(127 0 0 1) asByteArray].
	^ addr
