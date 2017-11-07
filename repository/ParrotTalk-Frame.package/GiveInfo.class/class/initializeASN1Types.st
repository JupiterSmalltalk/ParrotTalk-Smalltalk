as yet unclassified
initializeASN1Types

	((ASN1Module name: #Session)
		addImport: (ASN1Module name: #RSA);
		sequence: #GiveInfo mapping: GiveInfo)
			add: #vatId type: #ASN1UTF8StringType;
			add: #domain type: #ASN1UTF8StringType;
			add: #publicKey type: #RSAPublicKey;
			yourself.
	(ASN1Module name: #Session) find: #GiveInfo.
