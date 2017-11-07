asn1der
initializeASN1Types

	| secureSessionModule |
	secureSessionModule := ASN1Module name: #Session.
	[secureSessionModule remove: (secureSessionModule find: #SessionIdentity)] on: KeyNotFound do: [:ex | ].
	secureSessionModule addImport: (ASN1Module name: #RSA).

	(secureSessionModule sequence: #SessionIdentity mapping: SessionIdentity)
		add: #vatId type: #ASN1UTF8StringType;
		add: #publicKey type: #RSAPublicKey;
		add: #privateKey type: #RSAPrivateKey;
		add: #socketAddress type: #InetSocketAddress;
		add: #nickname type: #ASN1UTF8StringType;
		yourself.
	secureSessionModule find: #SessionIdentity.

