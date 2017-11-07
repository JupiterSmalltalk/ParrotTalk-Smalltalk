utility
localHostName

	| addr |
	addr := InetSocketAddress localHostAddress.
	^ NetNameResolver stringFromAddress: addr.
