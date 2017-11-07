as yet unclassified
initializeASN1Types

	((ASN1Module name: #Session) sequence: #SequenceOfString of: ASN1UTF8StringType).
	((ASN1Module name: #Session) sequence: #ReplyInfo mapping: ReplyInfo)
		add: #cryptoProtocols type: #SequenceOfString;
		add: #dataEncoders type: #SequenceOfString;
		yourself.
	(ASN1Module name: #Session) find: #ReplyInfo.
