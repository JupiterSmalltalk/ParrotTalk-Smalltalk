as yet unclassified
initializeASN1Types

	((ASN1Module name: #Session) sequence: #Go mapping: Go)
		add: #cryptoProtocol type: #ASN1UTF8StringType;
		add: #dataEncoder type: #ASN1UTF8StringType;
		add: #diffieHellmanParameter type: #ASN1ByteArrayType;
		add: #signature type: #ASN1ByteArrayType;
		yourself.
	(ASN1Module name: #Session) find: #Go.
