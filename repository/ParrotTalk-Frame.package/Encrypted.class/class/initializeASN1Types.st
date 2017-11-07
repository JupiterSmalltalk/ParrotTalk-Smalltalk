as yet unclassified
initializeASN1Types

	((ASN1Module name: #Session)
		sequence: #Encrypted mapping: Encrypted)
			add: #ivSequence type: #ASN1ByteArrayType;
			yourself.
	(ASN1Module name: #Session) find: #Encrypted.
