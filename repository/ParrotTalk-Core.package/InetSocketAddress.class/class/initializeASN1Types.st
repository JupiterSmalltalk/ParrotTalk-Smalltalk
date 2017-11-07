asn1der
initializeASN1Types

	| module |
	module := ASN1Module name: #Session.
	[module remove: (module find: #InetSocketAddress)] on: KeyNotFound do: [:ex | ].
	(module sequence: #InetSocketAddress mapping: InetSocketAddress)
		add: #host type: #ASN1UTF8StringType;
		add: #port type: #ASN1IntegerType;
		yourself.
	(ASN1Module name: #Session) find: #InetSocketAddress.
