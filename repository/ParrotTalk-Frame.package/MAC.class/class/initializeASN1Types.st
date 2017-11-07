initalize-release
initializeASN1Types

	((ASN1Module name: #Session)
		sequence: #MAC mapping: MAC)
			add: #mac type: #ASN1ByteArrayType;
			yourself.
	(ASN1Module name: #Session) find: #MAC.
