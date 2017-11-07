as yet unclassified
initializeASN1Types

	((ASN1Module name: #Session) sequence: #ProtocolAccepted mapping: ProtocolAccepted)
		add: #accepted type: #ASN1UTF8StringType;
		yourself.
	(ASN1Module name: #Session) find: #ProtocolAccepted.
