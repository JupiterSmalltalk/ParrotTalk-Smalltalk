as yet unclassified
initializeASN1Types

	((ASN1Module name: #Session) sequence: #ProtocolOffered mapping: ProtocolOffered)
		add: #offered type: #ASN1UTF8StringType;
		add: #preferred type: #ASN1UTF8StringType;
		yourself.
	(ASN1Module name: #Session) find: #ProtocolOffered.
